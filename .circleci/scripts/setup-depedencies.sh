#!/bin/bash
TARGET=./services/*

for f in $TARGET
do
    if [ -d "$f" ]
    then
        echo "Directory - $f"

        #- Create .env file in each folder
        # name: "Restore Env Variables"
        cp ./.env.development $f/.env.development
        # cp ./.env.webTesting $f/.env.webTesting

        cd $f

        #- Install Npm Package for each directory
        yarn --ignore-engines

        cd ../..
    fi
done

echo "✅✅ ======= Finish setup =========== ✅✅"