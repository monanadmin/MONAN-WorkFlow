#!/bin/bash

HOMEDIR=$(pwd)/ecflow

# GCC_PEE files:

nedit \
${HOMEDIR}/MONAN_TESTCASES.def \
${HOMEDIR}/MONAN_TESTCASES/GCC_PEE/install_scripts.bash \
${HOMEDIR}/MONAN_TESTCASES/GCC_PEE/install_MONAN-MODEL.bash \
${HOMEDIR}/MONAN_TESTCASES/GCC_PEE/scripts_CD-CT/scripts/*bash \
${HOMEDIR}/MONAN_TESTCASES/GCC_PEE/*.ecf \
${HOMEDIR}/MONAN_TESTCASES/GCC_PEE/Exps/N_procs/N_times/*ecf \
${HOMEDIR}/includes/head.h \
${HOMEDIR}/../kit.bash &




# GAM_TC files:
#nedit \
#${HOMEDIR}/MONAN_TESTCASES.def \
#${HOMEDIR}/MONAN_TESTCASES/GAM_TC/install_scripts.bash \
#${HOMEDIR}/MONAN_TESTCASES/GAM_TC/install_MONAN-MODEL.bash \
#${HOMEDIR}/MONAN_TESTCASES/GAM_TC/scripts_CD-CT/scripts/*bash \
#${HOMEDIR}/includes/head.h \
#${HOMEDIR}/MONAN_TESTCASES/GAM_TC/P1/*ecf \
#${HOMEDIR}/../kit.bash &



