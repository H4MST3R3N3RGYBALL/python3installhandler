#!/bin/bash
#Kaicore Simple Python 3 direct path conflict solver
#Args 1={TO INSTALL}
RED='\033[0;36m'
echo "Python 3 Simple install conflict solver by H4MST3R"
echo "To use this program your first argument must be a command then following other arguments"
if [ $1 ==  'help' ] || [ $1 == 'Help' ] || [ $1 == 'HELP' ]
then
	echo -e "${RED}--------------HELP--------------"
	echo -e "--------1st arg \= command--------"
	echo -e "--------Stuff  to  install--------"
	echo -e "--requirements auto installs from requirments.txt--"
	echo -e "--fromfile installs from a given file input--"
	echo -e "--install installs from command line arguments--"
fi

if [ $1 == 'requirements' ]
then
	/usr/bin/python3 -m pip install -r requirements.txt
fi

if [ $1 == 'fromfile' ]
then
	/usr/bin/python3 -m pip install -r $2
fi

if [ $1 == 'install' ]
then
	for arg in "$@"
	do
		if [ $arg != 'install' ]
		then
			/usr/bin/python3 -m pip install $arg
		fi
	done
fi
