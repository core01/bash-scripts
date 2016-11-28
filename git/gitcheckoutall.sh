#!/bin/bash
if [ -n "$1" ]
then
	find . -name ".git" -type d | sed 's/\/.git//' |  xargs -P10 -I{} git -C {} checkout $1
 else
	echo "Не указано имя ветки!"
fi
