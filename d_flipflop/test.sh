#!/bin/bash
vlib work
vmap work work

ctags -R -f .tags

vlog ./sim/*.v ./src/*.v
# vsim -debugdb work.mms_top
vsim tb_top -voptargs=+acc
