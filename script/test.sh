i=0786
c=B
for style in fire smoke water; do
python test.py \
--text_name ../data/rawtext/yaheiB/val/$i.png \
--name $style-$c \
--scale 0.0 \
--structure_model ../save/$style-GS-iccv.ckpt \
--texture_model ../save/$style-GT-iccv.ckpt \
--gpu
done;
