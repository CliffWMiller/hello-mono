#!/bin/bash

# prepare apt for install
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update

# install mono complete
sudo apt-get -y install mono-complete 

echo Installation complete

echo Compiling and running Hello World
mcs hello.cs
mono hello.exe