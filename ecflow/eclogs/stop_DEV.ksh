#!/bin/ksh

export ECF_PORT=1734

ecflow_client --group="halt=yes; check_pt; terminate=yes"

