export PS1="🦇@\e[95m\w\e[0m$"

docker_purge(){
	docker ps -aq &&
	docker stop $(docker ps -aq) &&
	docker rm $(docker ps -aq) &&
	docker rmi $(docker images -q)
}

alias mysqldump='~/Desktop/utils/mysql/bin/mysqldump'

corpcommit(){
        if [ ! -d "../../projects/" ]
        then
		echo "Wrong dir, should be in 'projects' root!"
		kill -INT $$
	fi
        
	echo "Copying repo into ../$1"
        if [ ! -d "../$1" ]
        then
                ls -la ..
                echo "Something wrong, '../$1' doesn't exist, aborting!!!"
                kill -INT $$
        fi

        cp -R $(ls | grep -v '^node_modules$') ../$1/
       	echo "Success!!"
}
