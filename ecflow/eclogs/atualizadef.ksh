#!/bin/ksh

if [ $# -ne 1 ] 
then
   echo ""
   echo "${0} [SUITE root name]"
   echo ""
   exit
fi

suite=${1}

export ECF_PORT=3142

ecflow_client --delete /${suite}
ecflow_client --load=${suite}.def
ecflow_client --begin=${suite}

echo "${suite} atualizada."
echo ""

