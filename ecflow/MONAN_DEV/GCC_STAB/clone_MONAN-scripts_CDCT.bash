#!/bin/bash

MONAN_VERSION=1.0.0
CONVERT_MPAS_VERSION=1.0.0

git clone https://github.com/monanadmin/scripts_CD-CT.git
cd scripts_CD-CT
git checkout 1.0.0
cd scripts
1.install_monan.bash https://github.com/monanadmin/MONAN-Model.git ${MONAN_VERSION} ${CONVERT_MPAS_VERSION}

