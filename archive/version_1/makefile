#Compiler flags:
# -g    adds debugging information to the executable file
# -Wall turns on most, but not all, compiler warnings
CFLAGS = -Wall -g

#Extra flags to give to compilers when they are supposed to invoke the linker, ‘ld’, such as -L.
#Libraries (-lfoo) should be added to the LDLIBS variable instead.
#LDFLAGS = 

#Library flags or names given to compilers when they are supposed to invoke the linker, ‘ld’.
#Non-library linker flags, such as -L, should go in the LDFLAGS variable.
LDLIBS = -lpigpio

#The target executable file name
TARGET = p0wer

#The compiler; typically gcc for c and g++ for c++
CC = gcc

all:
	$(CC) $(TARGET).c $(CFLAGS) -o $(TARGET) $(LDLIBS)

#Executing "make clean" will carry out the following.
clean:
	rm -f $(TARGET) *.o


#Installation destinations.
INSTALL_DEST_BIN = /usr/local/sbin/$(TARGET)

#Executing "make install" will carry out the following.
install: all
ifneq ($(shell id -u), 0)
	@echo Must be run as root.  Try: sudo make install
else
	install --mode=04755 --owner=root --group=root $(TARGET) $(INSTALL_DEST_BIN)
endif

#Executing "make uninstall" will carry out the following.
uninstall:
ifneq ($(shell id -u), 0)
	@echo Must be run as root.  Try: sudo make install
else
	rm --force $(INSTALL_DEST_BIN)
endif
