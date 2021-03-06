
FROM centos:7.6.1810 AS build
WORKDIR /home
define(`BUILD_LINKAGE',shared)dnl

include(build-tools.m4)
include(ispc.m4)
include(embree.m4)
include(ospray.m4)
#include(ospray-example_xfrog.m4)
include(OpenImageIO.m4)
include(ospray-mpi.m4)
#include(ospray-example_san-miguel.m4)

FROM build
LABEL Description="This is the image for graphics development on CentOS 7.6"
LABEL Vendor="Intel Corporation"
WORKDIR /home

