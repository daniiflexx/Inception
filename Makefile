all:
	sudo docker-compose -f srcs/docker-compose.yml up -d
clean:
	sudo docker stop mariadb nginx wordpress
	sudo docker rm nginx mariadb wordpress
	sudo docker rmi nginx:dcruz wordpress:dcruz mariadb:dcruz
	sudo rm -rf ~/data/wordpress/* ~/data/mariadb/*
	
re:	
	sudo docker-compose -f srcs/docker-compose.yml up -d --build
