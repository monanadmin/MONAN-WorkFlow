#!/bin/ksh

if [ $# -ne 1 ] 
then
   echo ""
   echo "${0} [SUITE root name]"
   echo ""
   exit
fi

suite=${1}

export ECF_PORT=8146

ecflow_client --delete /${suite}

echo "${suite} deletada."
echo ""

