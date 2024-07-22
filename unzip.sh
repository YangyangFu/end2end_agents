# unzip all the tar.gz file in the folder
for file in base-data/*.tar.gz; do
    tar -xvf $file -C base-data
    rm $file
done