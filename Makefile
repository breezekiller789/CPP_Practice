##### Refrence:
##### https://www.youtube.com/watch?v=Wt6KGlMkLz0

SRCDIR = src
OBJDIR = obj
BINDIR = bin
INCDIR = inc
SRC = $(wildcard $(SRCDIR)/*.cpp)
OBJ = $(patsubst %.cpp,$(OBJDIR)/%.o, $(notdir $(SRC)))
BIN = $(patsubst %.cpp,$(BINDIR)/%, $(notdir $(SRC)))
CC = g++
CCFLAGS = -Wall -Werror -g -I$(INCDIR)
DIRECTORY = obj bin
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
BLUE = \033[1;34m
NC = \033[1;0m

.SECONDARY : $(OBJ)

all : $(BIN)
	@echo "$(YELLOW)All Done!!$(NC)"

$(BINDIR)/% : $(OBJDIR)/%.o
	$(CC) -o $@ $<
	@echo "$(GREEN)Done!$(NC)"

$(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	@echo "$(RED)Compiling...$(NC)"
	mkdir -p $(DIRECTORY)
	$(CC) $(CCFLAGS) -c $< -o $@

setup :
	mkdir -p $(DIRECTORY)

.PHONY : clean help

clean :
	@echo "$(RED)Cleaning...$(NC)"
	-rm $(OBJ) $(BIN)
	@echo "$(YELLOW)All Clean!!$(NC)"

help :
	@echo "src = $(SRC)"
	@echo "obj = $(OBJ)"
	@echo "bin = $(BIN)"
	@echo "inc = $(INCDIR)"
