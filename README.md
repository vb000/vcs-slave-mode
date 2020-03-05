# VCS Slave Mode
Example to control VCS simulation with a C/C++ program. This involves VCS 
output a shared object instead of an executable (simv). This flow is tested 
for VCS-MX 2018 and VCS 2019.

Usage:
```
$ # Make sure $VCS_HOME and related licence variables are set.
$ make
```

This uses `-slave` option provided by VCS to output a shared executable library 
as the simulation output product instead of the default `simv` executable. In 
addition to this, we need `-e` flag to change name of the `main` function in the 
shared executable library and additional libraries to be linked along with C/C++
program. There's not much documentation to this and hence this repo.
