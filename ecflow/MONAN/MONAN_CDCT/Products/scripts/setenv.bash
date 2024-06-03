#!/bin/bash

# Load modules:

module purge
module load ohpc
module unload openmpi4
module load phdf5
module load netcdf 
module load netcdf-fortran 
module load mpich-4.0.2-gcc-9.4.0-gpof2pv
module load hwloc
module load phdf5
module load cdo-2.0.4-gcc-9.4.0-bjulvnd
module load opengrads-2.2.1
module load nco-5.0.1-gcc-11.2.0-u37c3hb
module load metis
module load python-3.9.13-gcc-9.4.0-moxjnc6 
module load ecflow/5.8.4
module list

set +e
#unalias python
set -e
echo "sentev >>> $(pwd)"
source .venv/bin/activate

# MONAN-suite install root directories:
# Put your directories:
export DIR_PRODUCTS=/mnt/beegfs/monan/i522-MONAN-WorkFlow/MONAN-WorkFlow
export DIR_PRODUCTD=/mnt/beegfs/monan/i522-MONAN-WorkFlow/MONAN-WorkFlow


# Submiting variables:
# Products phase:
export PRODS_QUEUE="batch"
export PRODS_ncores=1
export PRODS_nnodes=1
export PRODS_ncpn=1
export PRODS_jobname="Prods.MONAN"
export PRODS_walltime="8:00:00"


#-----------------------------------------------------------------------
# We discourage changing the variables below:

# Colors:
export GREEN='\033[1;32m'  # Green
export RED='\033[1;31m'    # Red
export NC='\033[0m'        # No Color
export BLUE='\033[01;34m'  # Blue
