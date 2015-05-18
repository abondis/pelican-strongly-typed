#!/bin/sh
cd templates/
for i in *.jade;
do
    echo "rendering $i to ${i%.*}.html";
    pyjade -c jinja $i ${i%.*}.html;
done
