#!/bin/bash

#bash option stop on first error
set -e

#Include all user options and dependencies
git_mirrors_dir="${0%/*}"
source ${git_mirrors_dir}/includes.sh

#check if api version is set
[ -z $gitlab_api_version ] && gitlab_api_version=4

#export env vars for python script
export gitlab_user_token_secret gitlab_url gitlab_namespace gitlab_user ssl_verify gitlab_api_version

PROGNAME="${0##*/}"
PROGVERSION="${VERSION}"
#Default script options

git=false
project_name="dev_al.al"
mirror="OwhNLPUQ8CawmADeBYdZ"
force=false
no_create_set="${no_create_set:-false}"
no_remote_set="${no_remote_set:-false}"
http_remote="${http_remote:-false}"
usage()
{
  cat <<EOF
${PROGNAME} ${PROGVERSION}
SAGE:
  ${PROGNAME} TYPE --project dev_al.al --mirror URL [--authors-file FILE]