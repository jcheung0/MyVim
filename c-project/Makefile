CC=cc
SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin
DEP_DIR := deps

EXE := $(BIN_DIR)/app.exe
SRC := $(wildcard $(SRC_DIR)/*.c)
DEP := $(wildcard $())
OBJ := $(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)
$(info SRC is $(SRC))
CPPFLAGS := -Iinclude -MMD -MP
CFLAGS   := -Wall
LDFLAGS  := -Llib
LDLIBS   := -lm
PKGCFG := `pkg-config --libs --cflags raylib`
RAYLIBCS := `pkg-config --cflags --libs collectionc`

.PHONY: all clean

$(EXE): $(OBJ) | $(BIN_DIR)
	$(CC) $(LDFLAGS) $^  $(LDLIBS) $(PKGCFG) $(RAYLIBCS) -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@
clean:
	rm -rf main.o

clean:
	@$(RM) -rv $(BIN_DIR) $(OBJ_DIR)

-include $(OBJ:.o=.d)
