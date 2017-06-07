#Compiler flags:
# -g    adds debugging information to the executable file
# -Wall turns on most, but not all, compiler warnings
CFLAGS = -Wall -g


#Extra flags to give to compilers when they are supposed to invoke the linker, ‘ld’, such as -L.
#Libraries (-lfoo) should be added to the LDLIBS variable instead.
#LDFLAGS = 


#Library flags or names given to compilers when they are supposed to invoke the linker, ‘ld’.
#Non-library linker flags, such as -L, should go in the LDFLAGS variable.
LDLIBS = -lwiringPi


#The target executable file name
TARGET = p0wer

#The compiler; typically gcc for c and g++ for c++
CC = gcc

all:
	$(CC) $(CFLAGS) $(LDLIBS) $(TARGET).c -o $(TARGET)

#Executing "make clean" will carry out the following.
clean:
	rm -f $(TARGET) *.o

