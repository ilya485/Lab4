CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=calculator.cpp main.cpp calculator.h
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=main
LIBNAME=lib

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

$(LIBNAME).a: $(OBJECTS)
    ar rcs $(LIBNAME).a $(OBJECTS)
