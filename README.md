# Mac OSX Setup

This repository contains babushka configuration management files which sets up all the software and tools in Mac OSX

## Configuration Management
we are using Babushka for the configuration management. Here are few reference articles
- https://thoughtworks.github.io/p2/issue08/babushka/

## Prerequisite step

-  Install XCode from AppStore
-  Accept the XCode License agreement 
```
   sudo xcodebuild -license
```
-  Install Babushka (https://github.com/benhoskings/babushka)
```
   sudo sh -c "`curl https://babushka.me/up`"
```
- Generate the ssh keys and add the keys in SSH Settings
```
   ssh-keygen -t rsa -b 4096 -C "Kamal"
```
- Configure the Name and email address in the git configuration
```
   git config --global --edit
```
