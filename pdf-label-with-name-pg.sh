for file in *.pdf; do
  name=$(basename $file .pdf)
  cpdf -prerotate -add-text "$name-%Bates" -bottomright 10 -font "Helvetica" -color "black" -bates 1 -bates-pad-to 3 $file -o "$name-stamped.pdf"
done