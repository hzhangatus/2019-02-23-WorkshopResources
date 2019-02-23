
for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile # output filename to screen
    cut -f "$1,$2,$3"  $gapminderfile | sort -"$5" | head -"$4"
done
