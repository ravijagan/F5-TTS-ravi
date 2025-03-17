#echo "usage  --ref_audio <ref_audio_file > --ref_text <file containing text of audio> --gen_file < the file containing the text to be spoken>"python ../src/f5_tts/infer/infer_cli.py --model F5-TTS --ref_audio ../sound_library/nivi_voice.wav --ref_text ../sound_library/nivi.txt --output_dir ./workout --gen_file ./temp_dir/'1.5 Amyloidosis_transcription.txt'
#echo " python ../src/f5_tts/infer/infer_cli.py --model F5-TTS --ref_audio ../sound_library/nivi_voice.wav --ref_text ../sound_library/nivi.txt --output_dir ./workout --gen_file ./temp_dir/'1.5 Amyloidosis_transcription.txt'

set -x
#for f in temp_dir/*
REF_VOICE=../sound_library/Arnold_schwarznegger.wav
REF_TEXT=../sound_library/arnold_schwarzenegger.txt
for f in C:/Users/ravi/srchdocs/summaries/Pathoma_summaries/*.txt
     #for f in C:\\Users\\ravi\\srchdocs\\summaris\\Pathoma_summaries\\*.tx
     do
          echo filename : $f

          python ../src/f5_tts/infer/infer_cli.py --model F5-TTS --ref_audio $REF_VOICE\
               --ref_text "`cat $REF_TEXT`"  --gen_file $f --output_dir workout_1_13
          echo filename done : "$f" 
     done
     set +x
