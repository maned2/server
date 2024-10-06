#!/bin/bash

cd /home/eco

sed -i -- 's/MaxStackSize(10)/MaxStackSize(100)/g' server/Mods/__core__/AutoGen/**/*.cs
sed -i -- 's/MaxStackSize(15)/MaxStackSize(100)/g' server/Mods/__core__/AutoGen/**/*.cs
sed -i -- 's/MaxStackSize(20)/MaxStackSize(100)/g' server/Mods/__core__/AutoGen/**/*.cs
sed -i -- 's/MaxStackSize(40)/MaxStackSize(100)/g' server/Mods/__core__/AutoGen/**/*.cs