#!/bin/bash
set -x
ref_file_contents=$(cat nivi.txt)
echo  "$ref_file_contents"
python ../src/f5_tts/infer/infer_cli.py  --model F5TTS_Base  --ref_audio ./nivi.wav --ref_text "$ref_file_contents" --gen_file tobespoken.txt

