#!/bin/bash
#Script to create a repository on github account
#tribeiros@indracompany.com

#Variables 
USER=$1 #user name
REPO=$2 #repository name

# Validating user arguments
  if [ ! $2 ]; then
    echo "Repository name is missing "
  	exit
  fi

#exec
curl -u "${USER}" https://api.github.com/user/repos -d '{"name":"'${REPO}'"}'

#testando