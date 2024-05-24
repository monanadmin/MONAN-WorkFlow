
# MONAN-WorkFlow
Work flow ECF scripts for pre-operational ECFLOW suit.

### This version is for figures production only

Cloning this repository, you will get this files:

~~~
MONAN-WorkFlow
    ├── ecflow
    │   ├── clone_scripts_CD-CT.bash
    │   ├── eclogs
    │   │   ├── atualizadef.ksh
    │   │   ├── deletedef.ksh
    │   │   ├── inicializadef.ksh
    │   │   ├── openecview.ksh
    │   │   ├── start.ksh
    │   │   ├── stop.ksh
    │   │   └── template.ecf
    │   ├── includes
    │   │   ├── head.h
    │   │   └── tail.h
    │   ├── MONAN
    │   │   ├── Manut.ecf
    │   │   ├── Products.ecf
    │   │   └── Products
    │   │       └── scripts
    │   │           ├── gera_figs.py
    │   │           ├── setenv.bash
    │   │           ├── sub_py.bash
    │   │           └── requirements.txt
    │   └── MONAN.def
    └── README.md
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
