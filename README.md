SWIG Python example
===================

Simple example how to use SWIG and Python packages together.

# Guide

You can build the extension module and package using the Dockerfile and `docker-inside`
package like this:

        docker build -t swig-example:latest ./docker/
        docker-inside -W $(pwd)/example --tmp-home swig-example:latest

Inside the container, run `./build-all.sh` to build the example and run a
simple show case script.
