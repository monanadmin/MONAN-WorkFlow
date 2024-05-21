#!/bin/ksh

export ECF_PORT=8146

ecflow_client --group="halt=yes; check_pt; terminate=yes"

