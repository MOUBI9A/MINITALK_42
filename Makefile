NAME		= src/server
NAMI		= src/client

SRVB		= src_bonus/server_bonus
CLTB		= src_bonus/client_bonus

FLAGS	= -Wall -Wextra -Werror

all: ${NAME} ${NAMI}

bonus: ${SRVB} ${CLTB}

${SRVB}: src_bonus/server_bonus.c
	@cc ${FLAGS} src_bonus/server_bonus.c -o server_bonus

${CLTB}: src_bonus/client_bonus.c
	@cc ${FLAGS} src_bonus/client_bonus.c -o client_bonus

${NAME}: src/server.c
	@cc ${FLAGS} src/server.c -o server

${NAMI}: src/client.c
	@cc ${FLAGS} src/client.c -o client


clean:
	@rm -f server client server_bonus client_bonus
fclean: clean

re: fclean all
