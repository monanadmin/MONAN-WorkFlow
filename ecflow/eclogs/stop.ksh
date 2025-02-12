#!/bin/ksh

export ECF_PORT=$(id -u)

ecflow_client --group="halt=yes; check_pt; terminate=yes"

