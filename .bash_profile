export PS1="🦇@\e[95m\w\e[0m$"

docker_purge(){
	docker ps -aq &&
	docker stop $(docker ps -aq) &&
	docker rm $(docker ps -aq) &&
	docker rmi $(docker images -q)
}

alias mysqldump='~/Desktop/utils/mysql/bin/mysqldump'