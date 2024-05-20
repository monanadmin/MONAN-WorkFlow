#!/bin/bash
#SBATCH --job-name=Prods.MONAN
#SBATCH --nodes=1
#SBATCH --partition=batch
#SBATCH --tasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --time=8:00:00
#SBATCH --output=/mnt/beegfs/carlos.souza/repo_Monan/i508-MONAN-WorkFlow/MONAN-WorkFlow/ecflow/MONAN/Products/dataout/2024052000/logs/subpy.bash.o%j    # File name for standard output
#SBATCH --error=/mnt/beegfs/carlos.souza/repo_Monan/i508-MONAN-WorkFlow/MONAN-WorkFlow/ecflow/MONAN/Products/dataout/2024052000/logs/subpy.bash.e%j     # File name for standard error output
#SBATCH --exclusive



cd $SLURM_SUBMIT_DIR
echo $SLURM_SUBMIT_DIR
echo "Lista de módulos carregados: "
module list
echo "========"

ulimit -s unlimited
MPI_PARAMS="-iface ib0 -bind-to core -map-by core"
export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=1
export I_MPI_DEBUG=5

echo "python /home/luiz.rodrigues/sanity_check/src/gera_figs.py --basedir /mnt/beegfs/carlos.souza/repo_Monan/i508-MONAN-WorkFlow/MONAN-WorkFlow/ecflow/MONAN/Products/dataout/2024052000 --datein 2024052000 --suffix .00.00.x1024002L55 --prefix MONAN_DIAG_G_POS_GFS_ --outdir /mnt/beegfs/carlos.souza/repo_Monan/i508-MONAN-WorkFlow/MONAN-WorkFlow/ecflow/MONAN/Products/dataout/2024052000 --mxhour 240"

