
sudo docker pull quay-mirror.qiniu.com/coreos/flannel:v0.12.0-arm64 
sudo docker pull quay-mirror.qiniu.com/coreos/flannel:v0.12.0-arm
sudo docker pull quay-mirror.qiniu.com/coreos/flannel:v0.12.0-ppc64le
sudo docker pull quay-mirror.qiniu.com/coreos/flannel:v0.12.0-s390x
sudo docker pull quay-mirror.qiniu.com/coreos/flannel:v0.12.0-amd64


sudo docker tag quay-mirror.qiniu.com/coreos/flannel:v0.12.0-arm64 coreos/flannel:v0.12.0-arm64 
sudo docker tag quay-mirror.qiniu.com/coreos/flannel:v0.12.0-arm coreos/flannel:v0.12.0-arm
sudo docker tag quay-mirror.qiniu.com/coreos/flannel:v0.12.0-ppc64le coreos/flannel:v0.12.0-ppc64le
sudo docker tag quay-mirror.qiniu.com/coreos/flannel:v0.12.0-s390x coreos/flannel:v0.12.0-s390x
sudo docker tag quay-mirror.qiniu.com/coreos/flannel:v0.12.0-amd64 coreos/flannel:v0.12.0-amd64



sudo kubectl apply  -f kube-flannel.yaml --v=6
