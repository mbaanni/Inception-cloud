
all: build

build:
	@mkdir -p /Users/mbaanni/data/wordpress /Users/mbaanni/data/mariadb
	@docker compose -f srcs/docker-compose.yml up --build -d

start:
	@docker compose -f srcs/docker-compose.yml up -d

stop:
	@docker compose -f srcs/docker-compose.yml stop

clean:
	@docker compose -f srcs/docker-compose.yml down -v
	@rm -rf /Users/mbaanni/data/

fclean:
	@docker compose -f srcs/docker-compose.yml down -v
	@docker system prune -af
	@rm -rf /Users/mbaanni/data/


re: stop start
