CC = g++
CCFLAGS = -Wall -Werror -c -g
SRC = $(wildcard *.cpp)
OBJ = $(patsubst %.cpp, %.o, $(SRC))
EXE = $(patsubst %.cpp, %, $(SRC))

.SECONDARY : $(OBJ)

all : $(EXE)

% : %.o
	$(CC) -o $@ $<

%.o : $(SRCDIR)%.cpp
	$(CC) -o $@ $< $(CCFLAGS)

clean :
	-rm $(EXE) $(OBJ)


