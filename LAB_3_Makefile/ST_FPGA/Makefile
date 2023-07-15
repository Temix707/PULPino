# Compiler settings
CC = gcc
CFLAGS = -Wall -Wextra -g

# Directories
SRC_DIR = .
OBJ_DIR = obj
PC_DIR = pc
UI_DIR = user_interface

# Source files
PCI_SRCS = $(addprefix $(PC_DIR)/,pci.c)
PCI_CONTROLLER_SRCS = $(addprefix $(UI_DIR)/,pci_controller.c main.c)

# Object files
PCI_OBJS = $(patsubst $(PC_DIR)/%.c,$(OBJ_DIR)/%.o,$(PCI_SRCS))
PCI_CONTROLLER_OBJS = $(patsubst $(UI_DIR)/%.c,$(OBJ_DIR)/%.o,$(PCI_CONTROLLER_SRCS))

# Targets
TARGET = pciproject

all: $(TARGET) pciprojectassembly.s

clean:
	rm -f $(OBJ_DIR)/*.o $(TARGET)

$(TARGET): $(PCI_OBJS) $(PCI_CONTROLLER_OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: $(PC_DIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJ_DIR)/%.o: $(UI_DIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

pciprojectassembly.s: $(TARGET)
	objdump -d  $< > $@
