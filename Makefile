.POSIX:

NAME    = fff
VERSION = 0.0.1

CC     = cc
CFLAGS = -std=c99 -D_POSIX_C_SOURCE=200809L -D_DEFAULT_SOURCE -Wall -Wextra -pedantic

BIN_DIR = /usr/local/bin

SRC = fff.c
OBJ = fff.o

all: $(NAME)
$(NAME): $(OBJ)
install: all
	@mkdir -p $(BIN_DIR)
	@mv $(NAME) $(BIN_DIR)
	@rm -f $(OBJ)
uninstall:
	@rm -f $(BIN_DIR)/$(NAME)
clean:
	@rm -f $(OBJ) $(NAME)
