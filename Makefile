CC = gcc
CFLAGS = -Wall -Wextra
TARGET = stack_growth_up_or_down
SRC = main.c

.PHONY: all clean run transient

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
ifeq ($(OS),Windows_NT)
	del /Q $(TARGET).exe
else
	rm -f $(TARGET)
endif

run: clean all
	./$(TARGET)

transient:
	@$(MAKE) run
	@$(MAKE) clean
