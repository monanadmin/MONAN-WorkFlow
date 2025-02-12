
# MONAN-WorkFlow

Work flow ECF scripts for pre-operational ECFLOW suit.

### History

0.1.0 - Stable version.

### This version is for figures production only

Cloning this repository, you will get this files:

~~~
├── MONAN-WorkFlow
│   ├── ecflow
│   │   ├── clone_MONAN-Products.bash
│   │   ├── eclogs
│   │   │   ├── atualizadef.ksh
│   │   │   ├── deletedef.ksh
│   │   │   ├── inicializadef.ksh
│   │   │   ├── openecview.ksh
│   │   │   ├── start_DEV.ksh
│   │   │   ├── start.ksh
│   │   │   ├── stop_DEV.ksh
│   │   │   ├── stop.ksh
│   │   │   └── template.ecf
│   │   ├── includes
│   │   │   ├── head.h
│   │   │   └── tail.h
│   │   ├── MONAN_DEV.def
│   │   ├── MONAN_STAB
│   │   │   ├── clone_MONAN-scripts_CDCT.bash
│   │   │   └── MONAN_CDCT
│   │   │       ├── model.ecf
│   │   │       ├── post.ecf
│   │   │       ├── pre.ecf
│   │   │       └── Products
│   │   │           ├── compare_dev_stable.ecf
│   │   │           └── sanity_check.ecf
│   │   ├── MONAN_STAB.def
│   │   ├── MONAN_TESTCASES
│   │   │   ├── clone_MONAN-scripts_CDCT.bash
│   │   │   └── GAM_TC
│   │   │       ├── P1
│   │   │       │   ├── files_management.ecf
│   │   │       │   ├── model.ecf
│   │   │       │   ├── post.ecf
│   │   │       │   └── pre.ecf
│   │   │       ├── P2
│   │   │       │   ├── files_management.ecf 
│   │   │       │   ├── model.ecf 
│   │   │       │   ├── post.ecf 
│   │   │       │   └── pre.ecf 
│   │   │       └── P3
│   │   │           ├── files_management.ecf
│   │   │           ├── model.ecf
│   │   │           ├── post.ecf
│   │   │           └── pre.ecf
│   │   └── MONAN_TESTCASES.def
│   └── README.md

~~~


### Quick starting 

- Load the ECFLow module on Egeon: `Module load ecflow/5.8.4`
- Initialize the ECFlow client-server (if it's not already up):
~~~
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
or

use the `inicializadef.ksh` from `eclogs` folder:
~~~
cd MONAN-WorkFlow/ecflow
./eclogs/inicializadef.ksh MONAN
~~~

- Start the GUI for view and monitoring your suite:
~~~
cd MONAN-WorkFlow/ecflow/eclogs
ecflow_ui >> ecflowview.${USER}.logs&
~~~
or

use the `openecview.ksh` script from `eclogs` folder:
~~~
cd MONAN-WorkFlow/ecflow/eclogs
openecview.ksh
~~~

done! You are ready to operate you suite MONAN. Enjoy it! 
