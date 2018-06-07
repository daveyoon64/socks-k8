#!/usr/bin/env bash
# Setup master node of K8S cluster
apt-get update && apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubelet kubeadm kubectl docker.io

# initialize the master node
kubeadm init
# need to test this to make sure I'm saving the last line
# $K8JOIN=$(kubeadm init | tail -1)

# Create a new user (k8s requires a non-root user to use)
useradd socksadmin
usermod -aG sudo socksadmin

# switch to the new user
su socksadmin
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
