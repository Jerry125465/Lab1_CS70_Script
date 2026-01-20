#!/bin/bash

LogFile="script.log"

current_date=$(date +"%Y-%m-%d-%H-%M-%S")
log() {
    echo "[$current_date] $1" >> "$LogFile"
}

log "Script started"

master_dir=$current_date
mkdir "$master_dir"
log "Created master directory: $master_dir"

languages=("Python", "Java", "C", "JavaScript", "Rust", "Cobalt", "Ruby", "PHP", "Ruby", "Swift")

lang_index=0

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
        lang_index=$(( (lang_index + 1) %10 ))
    done 
done 

log "Script finished"