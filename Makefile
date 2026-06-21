
all: build

build:
	@mkdir -p /home/ubuntu/data/wordpress /home/ubuntu/data/mariadb
	@docker compose -f srcs/docker-compose.yml up --build -d

start:
	@docker compose -f srcs/docker-compose.yml up -d

stop:
	@docker compose -f srcs/docker-compose.yml stop

clean:
	@docker compose -f srcs/docker-compose.yml down -v
	@rm -rf /home/ubuntu/data/

fclean:
	@docker compose -f srcs/docker-compose.yml down -v
	@docker system prune -af
	@rm -rf /home/ubuntu/data/

re: stop start
