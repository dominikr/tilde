

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
echo $IFSid

