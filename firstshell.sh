###
# Name: H M Sagar
# Date 06/06/2025
# Working on shell script module
####

set -x # to run script in debug mode
set -e # to throw the error and stop execution of shellscript
set -o pipefail

sagaar | echo
df -h
free
nproc
ps -ef | grep "system"
