#aliases

alias run-php-container="docker exec -it workspace_php_1 /bin/bash"
alias run-nginx-container="docker exec -it workspace_nginx_1 /bin/bash"
alias run-application-container="docker exec -it workspace_application_1 /bin/bash"
alias run-db-container="docker exec -it workspace_db_1 /bin/bash"
alias mysql="docker exec -it workspace_db_1 mysql"
alias php="docker exec -it workspace_php_1 php"
alias composer="docker exec -it workspace_php_1 composer"
alias git="docker exec -it workspace_application_1 git"
