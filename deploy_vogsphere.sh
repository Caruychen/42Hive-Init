# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    deploy_vogsphere.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/11 13:49:13 by cchen             #+#    #+#              #
#    Updated: 2022/02/11 16:22:39 by cchen            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

VOGSPHERE=$(ls | sed -n '/intra-uuid/p')

rm -rf ./${VOGSPHERE}/*

cp -r ./$REPO_NAME/network ./${VOGSPHERE}
cp -r ./$REPO_NAME/system ./${VOGSPHERE}
cp -r ./$REPO_NAME/scripts ./${VOGSPHERE}
chmod +x ./${VOGSPHERE}/scripts/*
