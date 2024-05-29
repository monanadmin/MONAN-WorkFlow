#!/bin/ksh

if [ $# -ne 1 ] 
then
   echo ""
   echo "${0} [SUITE root name]"
   echo ""
   exit
fi

suite=${1}

export ECF_PORT=$(id -u)

ecflow_client --load=${suite}.def
ecflow_client --begin=${suite}

echo "${suite} inicializada."
echo ""

