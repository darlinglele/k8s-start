sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager:v1.17.5
sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler:v1.17.5
sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy:v1.17.5
sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager:v1.17.3
sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler:v1.17.3
sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy:v1.17.3

sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/pause:3.1
sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/etcd:3.4.3-0
sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:1.6.5
sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:v1.17.5
sudo docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:v1.17.3




sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager:v1.17.5 k8s.gcr.io/kube-controller-manager:v1.17.5
sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler:v1.17.5 k8s.gcr.io/kube-scheduler:v1.17.5
sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy:v1.17.5 k8s.gcr.io/kube-proxy:v1.17.5

sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager:v1.17.5 k8s.gcr.io/kube-controller-manager:v1.17.3
sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler:v1.17.5 k8s.gcr.io/kube-scheduler:v1.17.3
sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy:v1.17.5 k8s.gcr.io/kube-proxy:v1.17.3
sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/pause:3.1 k8s.gcr.io/pause:3.1
sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/etcd:3.4.3-0 k8s.gcr.io/etcd:3.4.3-0
sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:1.6.5 k8s.gcr.io/coredns:1.6.5
sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:v1.17.5 k8s.gcr.io/kube-apiserver:v1.17.5
sudo docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:v1.17.5 k8s.gcr.io/kube-apiserver:v1.17.3

sudo kubeadm init --v=6  --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=192.168.56.102
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
