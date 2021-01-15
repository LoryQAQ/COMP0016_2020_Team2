export DATA_DIR=D:/bert/data_dir/
export BERT_BASE_DIR=D:/bert/wwm_uncased_L-24_H-1024_A-16

python run_classifier.py \
  --task_name=mytask \
  --do_train=true \
  --do_eval=true \
  --data_dir=$DATA_DIR/ \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=3.0 \
  --output_dir=/mytask_output


from bert_serving.client import BertClient
bc = BertClient()
bc.encode(['Wheelchair is an assistive technology.'])