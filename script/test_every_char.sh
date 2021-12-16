cat inputfile.txt | while IFS='|' read i c ; do

for style in fire smoke water maple; do
python test.py \
--text_name ../data/rawtext/yaheiB/val/$i.png \
--name $style-$c \
--scale 0.0 \
--structure_model ../save/$style-GS-iccv.ckpt \
--texture_model ../save/$style-GT-iccv.ckpt \
--gpu
done;

done;
