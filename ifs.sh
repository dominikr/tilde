
set . .
var=$*;   printf '%s '  "$var"
var=$@;   printf '%s '  "$var"
var="$*"; printf '%s '  "$var"
var="$@"; printf '%s\n' "$var"



set . . ; IFS='x'
var=$*;   printf '%s '  "$var"
var=$@;   printf '%s '  "$var"
var="$*"; printf '%s '  "$var"
var="$@"; printf '%s\n' "$var"


set . . ; IFS=''
var=$*;   printf '%s '  "$var"
var=$@;   printf '%s '  "$var"
var="$*"; printf '%s '  "$var"
var="$@"; printf '%s\n' "$var"
set . . ; IFS='\\'
var=$*;   printf '%s '  "$var"
var=$@;   printf '%s '  "$var"
var="$*"; printf '%s '  "$var"
var="$@"; printf '%s\n' "$var"
