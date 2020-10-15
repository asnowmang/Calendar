SHELL   = /bin/sh
FC	= gfortran
FLAGS	= -Wall -Wextra -Wconversion -O3
SOURCES = src/*.f90 src/Functions/*.f90
TARGET  = cal
BINDIR	= /usr/local/bin

all:
	$(FC) $(FLAGS) $(SOURCES) -o $(TARGET)

install:
	install $(TARGET) $(BINDIR)

clean:
	-rm -f $(TARGET)

uninstall:
	-rm -rf $(BINDIR)/$(TARGET)
