.PHONY: init

init:
	@mkdir -p docker src docker/mysql/data docker/nginx docker/php
	@touch docker/mysql/my.cnf docker/nginx/default.conf docker/php/Dockerfile docker/php/php.ini docker-compose.yml
	@tree .
	@echo '✅作成した内容に間違いがないか確認してください！'
