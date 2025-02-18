#!/bin/bash

MONAN_VERSION=develop
CONVERT_MPAS_VERSION=1.0.0
SCRIPTSCDCT_VERSION=1.0.0

if [ -d "scripts_CD-CT" ]; then
   echo "scripts_CD-CT já instalado..."
else
   echo "scripts_CD-CT não esta instalado, instalando..."
   git clone https://github.com/monanadmin/scripts_CD-CT.git
fi

cd scripts_CD-CT
git checkout ${SCRIPTSCDCT_VERSION}
git status | head -n 1
git log -1
cd scripts
1.install_monan.bash https://github.com/monanadmin/MONAN-Model.git ${MONAN_VERSION} ${CONVERT_MPAS_VERSION}
cat ../execs/VERSION.txt
