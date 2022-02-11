if [ -x "$(command -v docker)" ]; then
    echo "Update docker"
    # command
else
    echo "Install docker"
    # command
fi

args=$@

# Default args to all directories
# -> Builds all docker containers
if [ $# -eq 0 ]; then
    args=$(ls -d */)
fi

# Just for letting the user know
# if one of the args does not match a directory
all_dirs=$(ls -d */)
for i in $args; do
    echo $all_dirs | grep -w -q $i
    if [ $? -ne 0 ]; then
        echo "unknown directory: $i"
    fi
done

# Build the main docker container
cd ../..
docker build -t arena3d -f ./docker/drl_agent_node/Dockerfile .
cd -

# Build the environment containers
for i in $args; do
    cd $i
    docker build -t $(echo $i | sed 's/\///g') .
    cd -
done