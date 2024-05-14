#!/bin/ksh

export ECF_PORT=3142

ecflow_client --group="halt=yes; check_pt; terminate=yes"

