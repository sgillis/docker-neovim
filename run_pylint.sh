#! /bin/bash

if [ $# -eq 0 ]; then
    echo "Please provide image name"
    exit 1
fi

# Remove old pylint container
docker rm -f pylint > /dev/null 2>&1 || true

# Get pylintrc location
SCRIPT_LOCATION=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
DEFAULT_PYLINTRC=${SCRIPT_LOCATION}/pylintrc
CUSTOM_PYLINTRC=${PWD}/pylintrc
if [ -f $CUSTOM_PYLINTRC ]; then
    PYLINTRC=${CUSTOM_PYLINTRC}
    echo "Using custom pylintrc at ${CUSTOM_PYLINTRC}"
else
    PYLINTRC=${DEFAULT_PYLINTRC}
    echo "Using default pylintrc at ${CUSTOM_PYLINTRC}"
fi

IMAGE=$1

docker run \
    -d \
    -v /Users/sgillis:/Users/sgillis \
    -v ${PYLINTRC}:/root/.pylintrc \
    -v $(pwd):/src \
    --name pylint \
    $IMAGE /bin/bash -c "while true; do sleep 10; done"
