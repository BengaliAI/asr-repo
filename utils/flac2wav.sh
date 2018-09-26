target_dir="/media/manash/Drive/openslr-data/converted/"
flac_dir="/media/manash/Drive/openslr-data/test-bash/"

for a in ${flac_dir}*;
do
    if [ -d $a ]
    then
        # Make a directory in the target path 

        foldername=$(echo ${a} | rev | cut -d "/" -f1 | rev)
        
        # Making directory
        target_folderpath=${target_dir}${foldername}

        mkdir -p ${target_folderpath}
        
        # echo $target_folderpath

        for x in $a/*;
        do
            # Reveresing string to get the last element by first field
            filename=$(echo ${x} | rev | cut -d "/" -f1 | rev)
            fileid=$(echo ${filename} | cut -d "." -f1)
            # echo $fileid
            # echo ${target_dir}${fileid}
            outfile=${target_folderpath}/${fileid}'.wav'
            ffmpeg -i ${x} ${outfile}
        done
    fi
done