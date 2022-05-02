# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    check.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tkomeno <tkomeno@student.42tokyo.jp>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/29 06:36:24 by tkomeno           #+#    #+#              #
#    Updated: 2022/05/02 05:25:28 by tkomeno          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

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
