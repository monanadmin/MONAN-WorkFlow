#!/bin/bash

MONANPRODUCTS_VERSION=develop

if [ -d "MONAN-Products" ]; then
   echo "MONAN-Products já instalado..."
else
   echo "MONAN-Products não esta instalado, instalando..."
   git clone https://github.com/monanadmin/MONAN-Products.git
fi

cd MONAN-Products
git checkout ${MONANPRODUCTS_VERSION}
git status | head -n 1
git log -1
cd scripts
1.install.bash
