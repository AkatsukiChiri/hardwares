#!/bin/bash
vlib work
vmap work work

ctags -R -f .tags

vlog ./sim/*.v ./src/*.v
vsim tb_top -voptargs=+acc
