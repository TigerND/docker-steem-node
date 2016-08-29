#!/bin/bash
set -e

mkdir -p /witness_node_data_dir

if [[ ! -f /witness_node_data_dir/config.ini ]]; then
    cp $FILESROOT/config.ini.sample /witness_node_data_dir/config.ini
    echo "INFO: Sample config file is copied to your data dir."
fi

figlet Steem

echo
echo "$@"
echo

# Using the exec Bash command so that the final running application becomes 
# the container’s PID 1. This allows the application to receive any Unix 
# signals sent to the container. See the ENTRYPOINT help for more details.
exec "$@"