#!/bin/bash

cd OpenLane
make mount
echo "📢 Inside OpenLane Docker - Run this:"
echo "cd designs/counter && flow.tcl -design counter"
