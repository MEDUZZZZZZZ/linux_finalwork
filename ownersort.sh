#!/bin/bash

if [ -d $1 ] #na vhod podaem absolutniy put do faila

then

  echo "Dir $1 exists"

else

  echo "Dir $1 is not exist"

fi

share="/home/duz/shared"

cd $1

for element in *

do

	if [ -d "$element" ]

	then

	  echo "derictory"

	elif [ -f "$element" ]

	then

	  owner=$(ls -l "$element" | awk '{print $3}')

	  name=$(ls -l "$element" | awk {'print $9'})

	  cp "$element" "$share/$owner"

	  chown "$owner" "$share/$owner/$name"  #only if root

	fi

done

