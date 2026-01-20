#!/bin/bash

#Create the log file
LogFile="script.log"

current_date=$(date +"%Y-%m-%d-%H-%M-%S")

#Write to the log file a timestamp whenever called
log() {
    echo "[$current_date] $1" >> "$LogFile"
}

log "Script started"

#Create main with date and time
master_dir=$current_date
mkdir "$master_dir"
log "Created master directory: $master_dir"

#List of languages
languages=("Python", "Java", "C", "JavaScript", "Rust", "Cobalt", "Ruby", "PHP", "Ruby", "Swift")

#Starting index
lang_index=0

#Creating subdirectories and files
for i in {101..110}
do 
    subdir="$master_dir/file$i"
    mkdir "$subdir"
    log "Created subdirectory: $subdir"

    for j in {501..510}
    do 
        file="$subdir/tuser$j.txt"
        echo "${languages[$lang_index]}" > "$file"
        log "Created file: $file"

        #Modulo 10 keeps the index from going out of bounds
        #Rather than resetting index every loop
        lang_index=$(( (lang_index + 1) %10 ))
    done 
done 

log "Script finished"