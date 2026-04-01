# Path to your HYPRE installation (change this to where HYPRE is on your board)
HYPRE_DIR = /path/to/your/hypre/install

# Compiler settings
CC = mpicc
CFLAGS = -O3 -I$(HYPRE_DIR)/include -I.
LDFLAGS = -L$(HYPRE_DIR)/lib -lHYPRE -lm

# Target name
TARGET = ex5_uttunga

all: $(TARGET)

$(TARGET): src/ex5_automotive.c
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

clean:
	rm -f $(TARGET)
