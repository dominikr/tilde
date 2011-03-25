#!/bin/sh

#todo: ksh88: 111122424433
#check $SECOND for ksh88/93
set . .
IFS='x'
v1=$*
v2=$@
v3="$*"
v4="$@"

set . .
IFS=''
v5=$*
v6=$@
v7="$*"
v8="$@"

set . .
IFS='\\'
v9=$*
v0=$@
vA="$*"
vB="$@"

IFSid=`echo "$v1$v2$v3$v4$v5$v6$v7$v8$v9$v0$vA$vB" | sed 's/\.x\./1/g; s/\. \./2/g; s/\.\\\./3/g; s/\.\./4/g' `

if [ "$ZSH_VERSION" ]; then
	SH_NAME="zsh"
	SH_VERSION="$ZSH_VERSION"

elif [ "$BASH_VERSION" ]; then
	SH_NAME="bash"
	SH_VERSION="$BASH_VERSION"

elif [ "$KSH_VERSION" ]; then
	SH_NAME="ksh"
	SH_VERSION="$KSH_VERSION"

elif [ "x`IFS=X; echoX1 2> /dev/null`" = "x1" ]; then
	SH_NAME="bourne"

elif [ "x$IFSid" = "x121242423232" ]; then
	SH_NAME="ksh"
	# we have to put it in an eval, because stupid ash wants to
	# parse it even though it doesn't enter this if clause
	eval 'SH_VERSION=${.sh.version}'

elif [ "x$IFSid" = "x111144444444" ]; then
	SH_NAME="hush"

elif [ "x$IFSid" = "x111144443333" ]; then
	SH_NAME="ash"

elif [ "x$IFSid" = "x111122423333" ]; then
	if [ 010 -lt 9 ]; then
		SH_NAME="posh"
	else
		echo "unknown shell..."
	fi

else
	echo "unknown shell..."
fi

#export SH_NAME
#export SH_VERSION

echo $SH_NAME $SH_VERSION 
