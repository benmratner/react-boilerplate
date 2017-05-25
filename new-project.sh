#!/bin/bash

DIR="$(pwd)"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $SCRIPT_DIR

function setup {
    echo "What is your new project called?"

    read name

    echo "Enter your new project directory (or leave blank to use this directory)"

    read directory

    if [ "$directory" = "" ]; then
        NEW_DIR=$DIR/$name
    else 
        NEW_DIR=$directory/$name
    fi
}

function doTheThing {

    mkdir -p $NEW_DIR
    echo "Copying Files..."
    cp -r $SCRIPT_DIR/www $NEW_DIR/www
    cp -r $SCRIPT_DIR/.babelrc $NEW_DIR/.babelrc
    cp -r $SCRIPT_DIR/.gitignore $NEW_DIR/.gitignore
    cp -r $SCRIPT_DIR/package.json $NEW_DIR/package.json
    cp -r $SCRIPT_DIR/webpack.config.babel.js $NEW_DIR/webpack.config.babel.js
    echo "Installing npm packages..."
    ( cd $NEW_DIR ; npm install )
    echo "Initializing git..."
    ( cd $NEW_DIR ; git init )

}

setup

while true; do
    read -p "$(echo -e "I'm going to create a new project called $name at $NEW_DIR. Is that okay? [y/n] \n\b")" yn
    case $yn in
        [Yy]* ) doTheThing; exit;;
        [Nn]* ) setup;;
        * ) echo "Please enter y or n.";;
    esac
done



