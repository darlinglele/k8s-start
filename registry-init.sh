sudo docker pull registry
sudo docker run -v ~/data/registry/:/var/lib/registry -d -p 5000:5000 --restart always --name registry registry:2
