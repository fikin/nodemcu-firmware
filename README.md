# Fork of NodeMCU firmware

Most notable branches to mention:

- [benchmark in github.com/fikin/nodemcu-firmware](../../tree/benchmark)

## benchmark

This is a branch containing a module called "benchmark" (c-module, lua bindings, module documentation).

This module offers methods which are timing various esp operations. There are timing methods from other people as well as some new ones. Right now it has methods to cover cpu and memory use, some os functions, some gpio operations and even methods to test timer1 performance in all possible combinations.

The module is not a normal operations module per se but rather something of testing and learning nature. One would use it mainly when wants to evaluate performance aspects of esp. Being compiled as lua module makes its use rather easy and convenient to run various benchmarks.

The module is compiled by default (LUA_USE_MODULES_BENCHMARK is enabled in user_modules.h).

This module is for people who:

- want to run same performance test on various hardware and compare results
- want to compare results against other people performing similar tests
- want to benchmark own functionality and are looking for ready infrastructure code to start with

*This branch can be merged on top of nodemcu dev branch.*

## Pulling a branch into own git branch

Following instructions are widely documented in web:

Prepare:

- cd inside your own clone of https://github.com/nodemcu/nodemcu-firmware.git
- git remote add fikinnodemcu https://github.com/fikin/nodemcu-firmware.git
- git fetch fikinnodemcu

Take branch into use:

- git commit all new changes done in a working_branch
- git checkout -b new_branch_to_use_for_tests
- git merge origin/&lt;working branch&gt;
- git merge fikinnodemcu/&lt;branch to take&gt;
- modify any file you like
- compile firmware
- test firmware
