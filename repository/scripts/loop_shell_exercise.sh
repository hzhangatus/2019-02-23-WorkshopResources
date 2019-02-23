# Process all .txt files with names beginning with U-Z
# (Remember that sort -n outputs lowest to highest numbers)

for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile  # print the filename on the screen
    if [ "$2" = "high" ]  
    then  # if "high" then show highest value (tail)
            cut -f "$1" $gapminderfile | sort -n | tail -1 >>~/SDC_02-23-2019/repository/data/processed_data/gm_field"$1"_"$2".txt # Capture output into file
    else  # otherwise show lowest value (head)
            cut -f "$1" $gapminderfile | sort -n | head -1 >>~/SDC_02-23-2019/repository/data/processed_data/gm_field"$1"_"$2".txt # Capture output into file
    fi
done
