### Install and deploy with C-Sharp

For install C-SHARP is necesary something of documentation: 
[mono project](http://www.mono-project.com/)

#### 01 Add repository for ubuntu:

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

    echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list    

    sudo apt-get update

    sudo apt-get install mono-runtime
    sudo apt-get install monodevelop


#### 02 test code in ubuntu

* Compile use mcs
    mcs hello.cs
* Run exe
    mono hello.exe
