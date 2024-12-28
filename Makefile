BINARY=redgo

BUILD_DIR=bin

ifeq ($(OS),Windows_NT)
    BINARY_EXT=.exe
    RM=del /q
else
    BINARY_EXT=
    RM=rm -f
endif

BINARY_NAME=$(BUILD_DIR)/$(BINARY)$(BINARY_EXT)

run: build
	$(BINARY_NAME)

	
build:
	go build -o $(BINARY_NAME)


clean:
	$(RM) $(BINARY_NAME)