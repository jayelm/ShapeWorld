echo "agreement:"

echo "  custom"
python train.py -t agreement -n existential -m custom -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m custom -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  always_true"
python train.py -t agreement -n existential -m always_true -b 1 -i 2 -e 2 -f 2 --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m always_true -b 2 -i 1 --report-file models/test.csv --verbosity 0 --v1
echo "  always_false"
python train.py -t agreement -n existential -m always_false -b 1 -i 2 -e 2 -f 2 --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m always_false -b 2 -i 1 --report-file models/test.csv --verbosity 0 --v1
echo "  prefix_prior"
python train.py -t agreement -n existential -m prefix_prior -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m prefix_prior -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  suffix_prior"
python train.py -t agreement -n existential -m suffix_prior -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m suffix_prior -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  type_prior"
python train.py -t agreement -n existential -m type_prior -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m type_prior -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  cnn_only"
python train.py -t agreement -n existential -m cnn_only -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_only -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  lstm_only"
python train.py -t agreement -n existential -m lstm_only -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m lstm_only -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  cnn_bow"
python train.py -t agreement -n existential -m cnn_bow -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_bow -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  cnn_lstm"
python train.py -t agreement -n existential -m cnn_lstm -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_lstm -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  resnet_lstm"
python train.py -t agreement -n existential -m resnet_lstm -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m resnet_lstm -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  fracnet_lstm"
# python train.py -t agreement -n existential -m fracnet_lstm -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
# python evaluate.py -t agreement -n existential -m fracnet_lstm -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  cnn_conv"
python train.py -t agreement -n existential -m cnn_conv -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_conv -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  cnn_lstm_att1"
python train.py -t agreement -n existential -m cnn_lstm_att1 -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_lstm_att1 -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  cnn_lstm_att2"
python train.py -t agreement -n existential -m cnn_lstm_att2 -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_lstm_att2 -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  cnn_lstm_san"
python train.py -t agreement -n existential -m cnn_lstm_san -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_lstm_san -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  cnn_conv_san"
python train.py -t agreement -n existential -m cnn_conv_san -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_conv_san -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  cnn_lstm_film"
python train.py -t agreement -n existential -m cnn_lstm_film -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_lstm_film -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  cnn_lstm_rel"
python train.py -t agreement -n existential -m cnn_lstm_rel -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_lstm_rel -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1

echo "  cnn_only (python2)"
python2 train.py -t agreement -n existential -m cnn_only -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t agreement -n existential -m cnn_only -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1



echo "classification:"

echo "  cnn"
python train.py -t classification -n shape -m cnn -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t classification -n shape -m cnn -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  resnet"
python train.py -t classification -n shape -m resnet -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t classification -n shape -m resnet -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1
echo "  fracnet"
python train.py -t classification -n shape -m fracnet -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t classification -n shape -m fracnet -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1

echo "  cnn (python2)"
python train.py -t classification -n shape -m cnn -b 1 -i 2 -e 2 -f 2 --model-dir models/test/ --summary-dir models/summary/ --report-file models/test.csv --verbosity 0 -Y --v1
python evaluate.py -t classification -n shape -m cnn -b 2 -i 1 --model-dir models/test/ --report-file models/test.csv --verbosity 0 --v1



echo "readme:"
python train.py -t agreement -n existential -v readme -c examples/readme -m cnn_bow -i 10 -T --model-dir models/test/ -Y --v1
python evaluate.py -t agreement -n existential -v readme -c examples/readme -m cnn_bow -i 10 --model-dir models/test/ --v1



rm -r models/test
rm -r models/summary
rm  models/test.csv
