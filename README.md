<!-- Add padding between images -->
<div>
    <img src="https://raw.githubusercontent.com/KnowledgePending/OpenCV-Static-WASM-Docker/master/images/opencv-logo.png" display="inline-block"
    margin-left="auto"
    margin-right="auto"
    width="32%" ></img>
    <img src="https://raw.githubusercontent.com/KnowledgePending/OpenCV-Static-WASM-Docker/master/images/cpp_logo.png" display="inline-block"
    margin-left=" auto"
    margin-right=" auto"
    width="32%"></img>
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Web_Assembly_Logo.svg/1200px-Web_Assembly_Logo.svg.png" display="inline-block"
    margin-left=" auto"
    margin-right=" auto"
    width="32%"></img>
</div>  

# OpenCV Static WASM Docker
[![Docker Pulls](https://img.shields.io/docker/pulls/bryankp/opencv-static-wasm.svg)](https://hub.docker.com/r/bryankp/opencv-static-wasm)

This Docker Image allows for OpenCV C++ applications to be brought to the web by providing OpenCV as a static library compiled for WASM.  

Simply use the Emscripten toolchain along with path for the static library when compiling your application.

## Image details
* OpenCV Trunk from Build Date

## Option 1. Build Docker Image
* From within the directory of the Dockerfile execute the following command to build the image
```BASH
docker build -t opencv-static-wasm .
```
* To run with bash and a shared volume
```BASH
docker run -v <host_path>:<container_path> -ti opencv-static-wasm:latest bash
```
## Option 2. Pull image from Docker Hub
* Go to the repository page [bryankp/opencv-static-wasm](https://hub.docker.com/r/bryankp/opencv-static-wasm)
* Pull the latest image
```BASH
docker pull bryankp/opencv-static-wasm:latest
```

* To run with bash and a shared volume
```BASH
docker run -v <host_path>:<container_path> -ti bryankp/opencv-static-wasm:latest bash
```



### Important paths
* The Emscripten toolchain is located at 
```BASH
/emsdk_portable/emscripten/sdk/cmake/Modules/Platform/Emscripten.cmake
```

* The static library is located at
```BASH
/src/opencv/static_wasm
```

### Further Details
* Emscripten base image by [trzeci](https://hub.docker.com/r/trzeci/emscripten/).
* Official OpenCV [Linux Build Docs](https://docs.opencv.org/master/d7/d9f/tutorial_linux_install.html)
