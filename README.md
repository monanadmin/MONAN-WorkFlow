# MONAN-WorkFlow
Work flow ECF scripts for pre-operational ECFLOW suit.

### This version is only a simple-very-first-time test!

Cloning this repository, you will get this files:

~~~
MONAN-WorkFlow
    ├── ecflow
    │   ├── clone_scripts_CD-CT.bash
    │   ├── eclogs
    │   │   ├── start.ksh
    │   │   ├── stop.ksh
    │   │   └── template.ecf
    │   ├── includes
    │   │   ├── head.h
    │   │   └── tail.h
    │   ├── MONAN
    │   │   ├── First_test.ecf
    │   └── MONAN.def
    └── README.md
~~~

### Quick starting 

- Load the ECFLow module on Egeon: `Module load ecflow/5.8.4`
~~~
- Initialize the ECFlow client-server (if it's not already up):
cd MONAN-WorkFlow/ecflow/eclogs
start.ksh
~~~
- Use the `stop.ksh` script if you want to stop the ECF client-server process.
- Start your suite for the very first time:
~~~
cd MONAN-WorkFlow/ecflow
ecflow_client --load=MONAN.def
ecflow_client --begin=MONAN
~~~
- Start the GUI for view and monitoring your suite:
~~~
cd MONAN-WorkFlow/ecflow/eclogs
ecflow_ui >> ecflowview.${USER}.logs&
~~~
