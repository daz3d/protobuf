#!/bin/sh
nant -buildfile:buildScripts/protobuf.build package $*
