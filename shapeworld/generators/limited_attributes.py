from random import choice, random
from shapeworld import util
from shapeworld.world import Entity
from shapeworld.generators import GenericGenerator


class LimitedAttributesGenerator(GenericGenerator):

    def __init__(
        self,
        world_size=64,
        world_color='black',
        shapes=('square', 'rectangle', 'triangle', 'pentagon', 'cross', 'circle', 'semicircle', 'ellipse'),
        colors=('red', 'green', 'blue', 'yellow', 'magenta', 'cyan', 'gray'),
        textures=('solid',),
        rotation=True,
        size_range=(0.1, 0.25),
        distortion_range=(2.0, 3.0),
        shade_range=0.4,
        collision_tolerance=0.25,
        collision_shade_difference=0.5,
        boundary_tolerance=None,
        entity_counts=(1,),
        train_entity_counts=None,
        validation_entity_counts=None,
        validation_count_rate=0.5,
        test_entity_counts=None,
        test_count_rate=0.5,
        validation_combinations=None,
        validation_space_rate_range=(0.0, 1.0),
        validation_combination_rate=0.5,
        test_combinations=None,
        test_space_rate_range=(0.0, 1.0),
        test_combination_rate=0.5,
        max_provoke_collision_rate=0.33,
        shapes_range=(3, 4),
        colors_range=(3, 4),
        textures_range=(1, 1)
    ):
        super(LimitedAttributesGenerator, self).__init__(
            world_size=world_size,
            world_color=world_color,
            shapes=shapes,
            colors=colors,
            textures=textures,
            rotation=rotation,
            size_range=size_range,
            distortion_range=distortion_range,
            shade_range=shade_range,
            collision_tolerance=collision_tolerance,
            collision_shade_difference=collision_shade_difference,
            boundary_tolerance=boundary_tolerance,
            entity_counts=entity_counts,
            train_entity_counts=train_entity_counts,
            validation_entity_counts=validation_entity_counts,
            validation_count_rate=validation_count_rate,
            test_entity_counts=test_entity_counts,
            test_count_rate=test_count_rate,
            validation_combinations=validation_combinations,
            validation_combination_rate=validation_combination_rate,
            validation_space_rate_range=validation_space_rate_range,
            test_combinations=test_combinations,
            test_combination_rate=test_combination_rate,
            test_space_rate_range=test_space_rate_range
        )

        assert isinstance(max_provoke_collision_rate, float) and 0.0 <= max_provoke_collision_rate <= 1.0
        self.max_provoke_collision_rate = max_provoke_collision_rate

        assert 1 <= shapes_range[0] <= shapes_range[1] <= len(self.shapes)
        assert 1 <= colors_range[0] <= colors_range[1] <= len(self.colors)
        assert 1 <= textures_range[0] <= textures_range[1] <= len(self.textures)
        self.shapes_range = shapes_range
        self.colors_range = colors_range
        self.textures_range = textures_range

    def initialize(self, mode):
        super(LimitedAttributesGenerator, self).initialize(mode=mode)
        self.provoke_collision_rate = random() * self.max_provoke_collision_rate

        self.selected_shapes = self.shapes
        self.selected_colors = self.colors
        self.selected_textures = self.textures

        if mode == 'validation':
            self.selected_shapes = self.validation_shapes
            self.selected_colors = self.validation_colors
            self.selected_textures = self.validation_textures
        elif mode == 'test':
            self.selected_shapes = self.test_shapes
            self.selected_colors = self.test_colors
            self.selected_textures = self.test_textures

        if self.shapes_range is not None:
            self.selected_shapes = util.choice(items=self.selected_shapes, num_range=self.shapes_range, auxiliary=self.shapes)
        if self.colors_range is not None:
            self.selected_colors = util.choice(items=self.selected_colors, num_range=self.colors_range, auxiliary=self.colors)
        if self.textures_range is not None:
            self.selected_textures = util.choice(items=self.selected_textures, num_range=self.textures_range, auxiliary=self.textures)

    def model(self):
        return util.merge_dicts(
            dict1=super(LimitedAttributesGenerator, self).model(),
            dict2=dict(
                provoke_collision_rate=self.provoke_collision_rate,
                selected_shapes=self.selected_shapes,
                selected_colors=self.selected_colors,
                selected_textures=self.selected_textures
            )
        )

    def sample_entity(self, world, last_entity, combinations=None):
        if last_entity == -1:
            self.provoke_collision = random() < self.provoke_collision_rate
        elif last_entity is not None:
            self.provoke_collision = random() < self.provoke_collision_rate
        center = world.random_location(provoke_collision=self.provoke_collision)
        if combinations is None:
            return Entity.random_instance(center=center, rotation=self.rotation, size_range=self.size_range, distortion_range=self.distortion_range, shade_range=self.shade_range, shapes=self.selected_shapes, colors=self.selected_colors, textures=self.selected_textures)
        else:
            return Entity.random_instance(center=center, rotation=self.rotation, size_range=self.size_range, distortion_range=self.distortion_range, shade_range=self.shade_range, combinations=combinations)
