Bootstrap: docker
From: ubuntu:latest

%help

Test container for dask environment using ipyparallel


%post

apt-get -y update
apt-get -y install python3-pip net-tools
apt-get -y install graphviz libgraphviz-dev
apt-get -y install libpython3.6-dev

apt-get -y install nano
apt-get -y install vim
apt-get -y install git

pip3 install jupyter
pip3 install numpy scipy matplotlib
pip3 install ipyparallel
pip3 install dask[complete] distributed --upgrade

ipcluster nbextension enable

#export SINGULARITY_BINDPATH="/opt,/var/run/munge,/run/munge,/usr/lib64/libmunge.so.2,/usr/lib64/libmunge.so.2.0.0,/etc/profile.d/slurm.sh"

#echo 'slurmadmin:x:300:300::/opt/slurm/slurm:/bin/false' >> /etc/passwd
#echo 'slurmadmin:x:300:' >> /etc/group

%environment

XDG_RUNTIME_DIR=""
PYTHONPATH="${PYTHONPATH}:${HOME}/testenv/git/ProxPython:${HOME}/testenv/git/samsara/python
PATH=${PATH}:/opt/slurm/bin
MANPATH=$MANPATH:/opt/slurm/share/man
echo "slurmadmin:x:300:300::/opt/slurm/slurm:/bin/false" >> /etc/passwd
echo "slurmadmin:x:300:" >> /etc/group
