#!/bin/bash

while getopts k:h: flag
do
    case "${flag}" in
        k) key=${OPTARG};;
        h) hostname=${OPTARG};;
    esac
done

if [[ -z "$key" || -z "$hostname" ]]; then
    printf "\nMissing required parameter.\n"
    printf "  syntax: deploy.sh -k <pem key file> -h <hostname>\n\n"
    exit 1
fi

printf "\n-------------------------------\nDeploying root website to $hostname with $key\n-------------------------------\n"

# Step 1 - If new files are added to your home page they must be added to the copy.
#          Currently this copies all files found in the current directory.
printf "\n----> Copy the home page files to the target.\n"
scp -r -i $key * ubuntu@$hostname:public_html/
