sudo kubeadm reset --v=9
sudo iptables -F 
sudo iptables -t nat -F
sudo iptables -t mangle -F 
sudo iptables -X
sudo systemctl stop kubelet
sudo systemctl stop docker
sudo rm -rf /var/lib/cni/
sudo rm -rf /var/lib/kubelet/*
sudo rm -rf /etc/cni/
sudo systemctl start docker
sudo systemctl start kubelet

