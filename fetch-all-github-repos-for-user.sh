#!/usr/bin/env bash

display_usage() {
    echo -e "fetch-all-github-repos-for-user.sh tool\n"
    echo -e "USAGE"
    echo -e "\t$ fetch-all-github-repos-for-user.sh [GITHUB USERNAME]\n"
}

# if less than 1 arguments supplied, display usage 
if [  $# -le 0 ] 
then 
    display_usage
    exit 1
fi 

username=$1

resp_json=$(curl -s "https://api.github.com/users/${username}/repos?per_page=100")
repo_full_names=($(echo $resp_json | jq -r '.[].full_name'))
for full_name in "${repo_full_names[@]}"
do
  url="https://github.com/${full_name}.git"
  mkdir -p "${full_name}"
  pushd "${full_name}/.."
  git clone "${url}"
  popd
done