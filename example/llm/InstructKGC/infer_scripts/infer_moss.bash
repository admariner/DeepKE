CUDA_VISIBLE_DEVICES=0 python src/inference.py \
    --stage sft \
    --model_name_or_path 'models/moss-moon-003-sftb' \
    --checkpoint_dir 'lora/moss-v1' \
    --model_name 'moss' \
    --template 'alpaca' \
    --do_predict \
    --input_file 'data/NER/test.json' \
    --output_file 'results/moss-v1-lora.json' \
    --finetuning_type lora \
    --output_dir 'lora/test' \
    --predict_with_generate \
    --cutoff_len 512 \
    --bf16 \
    --max_new_tokens 300 \
    --bits 4