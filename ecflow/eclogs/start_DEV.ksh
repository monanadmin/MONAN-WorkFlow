#!/bin/ksh

export ECF_PORT=$(id -u)1
export LC_ALL="en_US.utf-8"


ecflow_server --port=$(id -u) &


