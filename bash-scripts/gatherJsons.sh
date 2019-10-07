#!/bin/bash
if [ ! -d $HOME/jsons ]; then mkdir $HOME/jsons; fi;
uuid=$(uuidgen)
mkdir $HOME/jsons/$uuid
echo "This script will search recursively for all .settings.json files, and copy them in a new folder ~/jsons/UUID."
echo "Do you aim a specific path? (else script will run recursively from current path)"
  read -p "y/n : " answer;
  if [ $answer = "y" ]; then
    read -p "Enter ABSOLUTE path (tilde unsupported) :" path
    echo "Target path : $path/"
    find $path -name "*.settings.json" -exec cp '{}' "$HOME/jsons/$uuid/" ";"
  else
    echo "No path specified, proceeding with path './'";
    find . -name "*.settings.json" -exec cp '{}' "$HOME/jsons/$uuid/" ";"
  fi;
