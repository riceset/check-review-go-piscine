# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    check.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tkomeno <tkomeno@student.42tokyo.jp>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/29 06:36:24 by tkomeno           #+#    #+#              #
#    Updated: 2022/04/29 09:43:38 by tkomeno          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# USAGE:
# First source the file to be able to cd into other directories:
# "source check.sh"

# EXPLANATION:
# You should execute the command like this:
# ./check.sh ACTION (e.g. see/edit/run) LESSON (e.g. Go00) EXERCISE (e.g. ex00)

# USE EXAMPLE:
# Use "./check.sh see 00 01" (to see Go00's ex01 contents using cat/bat)
# Use "./check.sh edit 00 01" (to edit Go00's ex01 using vim)
# Use "./check.sh run 00 01" (to run Go00's ex01)

if [[ $1 == "see" ]]; then
	$(! command -v bat &> /dev/null && echo "cat" || echo "bat") \
		Go$2/ex$3/main.go \
		Go$2/ex$3/vendor/piscine/*.go
elif [[ $1 == "edit" ]]; then
	lvim Go$2/ex$3/main.go \
	Go$2/ex$3/vendor/piscine/*.go
elif [[ $1 == "run" ]]; then
	cd Go$2/ex$3
	if [[ -f go.mod ]]; then
		go mod tidy
	else
		go mod init ex$3
	fi
	go run .
	cd ../..
fi
