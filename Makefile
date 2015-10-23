# Compila programas do curso de OpenGL no ambiente Linux
# Substitua teste-make pelo nome do programa ...
# ...que se está trabalhando
#
# Antes das linhas que contém "gcc...", não pode haver espaço em
# branco e sim uma marca de tabulação
#
# CESET, 2005, Prof. Marco Antonio
# Acrescentei a variável NAME para generalizar 

# Variables
MESA = /usr/bin/Mesa-5.0
INCPATH = -I$(MESA)/include
LIBPATH = -L$(MESA)/lib
LIBS        = -lglut -lSOIL -lGLU -lGL -lm
CFLAGS  = $(INCPATH) -g
LFLAGS  = $(LIBPATH) $(LIBS)
NAME    = sala_porta

# Main targets
$(NAME): $(NAME).o
	gcc -o $(NAME) $(NAME).o $(LFLAGS)

# Source targets
$(NAME).o: $(NAME).cpp
	gcc -c $(NAME).cpp $(CFLAGS)


