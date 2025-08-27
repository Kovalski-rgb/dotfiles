#!/usr/bin/bash

packageList=

getPackages() {
    while IFS= read -r line; do
        if [[ $line =~ ^# ]]; then
            shift
            continue
        fi
        packageList+="$line "
        shift
    done < ~/dotfiles/setup/packages.list
}

getPackages "$@"
sudo pacman -Syu --noconfirm
sudo pacman -S $packageList --noconfirm
