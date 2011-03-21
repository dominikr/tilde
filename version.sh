
if [ "$ZSH_VERSION" ]; then
	SH_NAME="zsh"
	SH_VERSION="$ZSH_VERSION"
elif [ "$BASH_VERSION" ]; then
	SH_NAME="bash"
	SH_VERSION="$BASH_VERSION"
elif [ "$KSH_VERSION" ]; then
	SH_NAME="ksh"
	SH_VERSION="$KSH_VERSION"
else
	if [ "x`IFS=X; echoX1 2> /dev/null`" = "x1" ]; then
		SH_NAME="bourne"
	# check for broken ps, which indicates we're running under
	# busybox. Then assume login shell == current shell
	elif [ "`ps -p$$ | wc -l `" -ne 2 ]; then
		SH_NAME=`basename $SHELL`
		SH_TYPE="busybox"
	else
		SH_NAME=`ps -p$$ | tail -1 | awk ' { print $4 } '`
		#SH_NAME=`ps -p$$ | sed -n '$ { s/\W\(\w*\)$/\1/p } '`
	fi
	# we can't check for $.sh.version before, because that
	# leads to syntax errors in all other shells
	if [ "$SH_NAME" = "ksh" ]; then
		SH_VERSION=${.sh.version}
	fi
fi

export SH_NAME
export SH_VERSION

echo $SH_NAME $SH_VERSION
