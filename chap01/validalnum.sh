#!/bin/bash 

validAlphaNum()
{
  validChars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"

  if [ "$validChars" = "$1" ] ; then
    return 0
  else
    return 1
  fi
}

/bin/echo -n "input: "
read input
if ! validAlphaNum "$input" ; then
  echo 'wrong'
else
  echo 'input is valid'
fi


