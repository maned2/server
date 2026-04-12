#!/bin/bash
ls -lah
cd data
ls -lah
cd ../
exec /usr/src/app/data/EcoServer -userToken=$ECO_SERVER_TOKEN