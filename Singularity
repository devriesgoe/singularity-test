Bootstrap: docker
From: ubuntu:18.04

%post

apt-get -y update
apt-get -y install python3-pip net-tools
apt-get -y install graphviz libgraphviz-dev

pip3 install --upgrade pip
pip3 install jupyter
pip3 install numpy scipy matplotlib
pip3 install ipyparallel

ipcluster nbextension enable

%environment

XDG_RUNTIME_DIR=""
PATH=${PATH}:${LSF_BINDIR}