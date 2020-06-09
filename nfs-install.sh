sudo apt-get install nfs-kernel-server  
sudo apt-get install nfs-common      
sudo echo "/nfsroot *(rw,sync,no_root_squash)" >> /etc/exports
sudo mkdir /nfsroot
sudo chmod -R 777 /nfsroot
sudo /etc/init.d/nfs-kernel-server restart
sudo mount -t nfs localhost:/nfsroot /nfs -o nolock
