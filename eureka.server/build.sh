mvn package -Dmaven.test.skip=true docker:build
docker tag eureka.server registry:5000/eureka.server
docker push registry:5000/eureka.server -vvv

