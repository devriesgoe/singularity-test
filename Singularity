Bootstrap: docker
From: ubuntu:latest

%help

Test container for dask environment


%post

apt-get -y update
apt-get -y install python3-pip

pip3 install virtualenv
mkdir $HOME/virtualenv
cd $HOME/virtualenv
virtualenv dask
source $HOME/virtualenv/bin/activate

pip3 install jupyter
pip3 install numpy scipy matplotlib
pip3 install dask[complete]

%environment

XDG_RUNTIME_DIR=""
PATH=${PATH}:${LSF_BINDIR}