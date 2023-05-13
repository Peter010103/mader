xhost +local:docker

docker run \
    --volume ${PWD}/gurobi.lic:/opt/gurobi/gurobi.lic \
    -e "DISPLAY=$DISPLAY" \
    -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --gpus all \
    --device=/dev/dri:/dev/dri \
    --name mader \
    -ti -d mader:latest
