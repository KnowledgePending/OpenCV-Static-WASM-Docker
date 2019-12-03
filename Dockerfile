FROM trzeci/emscripten
LABEL name="Bryan Flood <bryanfloodcontact@gmail.com>"
LABEL description="The latest OpenCV compiled to a static wasm library for use with C++"
LABEL url="https://github.com/KnowledgePending/opencv-static-wasm-docker"
RUN git clone https://github.com/opencv/opencv
RUN cd opencv && \
    mkdir static_wasm && \
    cd static_wasm && \
    cmake .. \
        -DCMAKE_INSTALL_PREFIX=/usr/local \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_TOOLCHAIN_FILE='/emsdk_portable/emscripten/sdk/cmake/Modules/Platform/Emscripten.cmake' \
        -DCMAKE_CXX_FLAGS='-O3 --llvm-lto 1 --bind -s ASSERTIONS=2 --memory-init-file 0 -s ERROR_ON_UNDEFINED_SYMBOLS=0' \
        -DCMAKE_C_FLAGS='-O3 --llvm-lto 1 --bind -s ASSERTIONS=2 --memory-init-file 0 -s ERROR_ON_UNDEFINED_SYMBOLS=0' \
        -DCPU_BASELINE='' \
        -DCPU_DISPATCH='' \
        -DCV_TRACE=OFF \
        -DBUILD_SHARED_LIBS=OFF \
        -DWITH_1394=OFF \
        -DWITH_ADE=OFF \
        -DWITH_VTK=OFF \
        -DWITH_EIGEN=OFF \
        -DWITH_FFMPEG=OFF \
        -DWITH_GSTREAMER=OFF \
        -DWITH_GTK=OFF \
        -DWITH_GTK_2_X=OFF \
        -DWITH_IPP=OFF \
        -DWITH_JASPER=OFF \
        -DWITH_JPEG=ON \
        -DWITH_WEBP=ON \
        -DWITH_OPENEXR=OFF \
        -DWITH_OPENGL=OFF \
        -DWITH_OPENVX=OFF \
        -DWITH_OPENNI=OFF \
        -DWITH_OPENNI2=OFF \
        -DWITH_PNG=ON \
        -DWITH_TBB=OFF \
        -DWITH_TIFF=OFF \
        -DWITH_V4L=OFF \
        -DWITH_OPENCL=OFF \
        -DWITH_OPENCL_SVM=OFF \
        -DWITH_OPENCLAMDFFT=OFF \
        -DWITH_OPENCLAMDBLAS=OFF \
        -DWITH_GPHOTO2=OFF \
        -DWITH_LAPACK=OFF \
        -DWITH_ITT=OFF \
        -DWITH_QUIRC=OFF \
        -DWITH_PTHREADS_PF=ON \
        -DBUILD_ZLIB=OFF \
        -DBUILD_opencv_apps=ON \
        -DBUILD_opencv_calib3d=ON \
        -DBUILD_opencv_core=ON \
        -DBUILD_opencv_dnn=OFF \
        -DBUILD_opencv_features2d=ON \
        -DBUILD_opencv_flann=ON \  
        -DBUILD_opencv_gapi=OFF \
        -DBUILD_opencv_ml=ON \
        -DBUILD_opencv_photo=ON \
        -DBUILD_opencv_imgcodecs=ON \
        -DBUILD_opencv_imgproc=ON \
        -DBUILD_opencv_shape=ON \
        -DBUILD_opencv_video=ON \
        -DBUILD_opencv_videoio=OFF \
        -DBUILD_opencv_videostab=ON \
        -DBUILD_opencv_highgui=ON \
        -DBUILD_opencv_superres=ON \
        -DBUILD_opencv_stitching=ON \
        -DBUILD_opencv_ts=ON \
        -DBUILD_opencv_java=OFF \
        -DBUILD_opencv_java_bindings_generator=OFF \
        -DBUILD_opencv_js=OFF \
        -DBUILD_opencv_python2=OFF \
        -DBUILD_opencv_python3=OFF \
        -DBUILD_opencv_python_bindings_generator=OFF \
        -DBUILD_EXAMPLES=OFF \
        -DBUILD_PACKAGE=OFF \
        -DBUILD_TESTS=OFF \
        -DBUILD_PERF_TESTS=OFF \
        -DBUILD_FAT_JAVA_LIB=OFF \
        -DBUILD_CUDA_STUBS=OFF \
        -DBUILD_DOCS=OFF \
        -DBUILD_IPP_IW=OFF \
        -DBUILD_ITT=OFF \
        -DBUILD_JASPER=OFF \
        -DBUILD_JAVA=OFF \
        -DBUILD_JPEG=ON \
        -DBUILD_OPENEXR=OFF \
        -DBUILD_PNG=ON \
        -DBUILD_PROTOBUF=OFF \
        -DBUILD_TBB=OFF \
        -DBUILD_TIFF=OFF \
        -DBUILD_WITH_DEBUG_INFO=OFF \
        -DBUILD_WITH_DYNAMIC_IPP=OFF \
        -DCV_ENABLE_INTRINSICS=OFF &&\
        make -j8

    
