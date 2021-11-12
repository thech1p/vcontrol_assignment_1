#compiler vars
CC=clang-10
CXX=clang-10
CFLAGS=-c -Wall -std=c++20 $(INC_PARAMS) -O1
LDFLAGS=-lstdc++ -lm
LINTER=clang-tidy
#$(MC_FLAGS) -x
#-Wpedantic -Werror $(MC_FLAGS) $(INC_PARAMS) -g -D_GLIBCXX_DEBUG -O0 -fno-elide-constructors

INCLUDE_DIRS=include
INC_PARAMS=$(foreach d, $(INCLUDE_DIRS), -I$d)

SRC:=$(shell find src -name '*.cpp')
OBJECTS=$(SRC:.cpp=.o)

APP_SRC=main.cpp
APP_OBJECTS=$(APP_SRC:.cpp=.o)
APP_EXECUTABLE=build/app

all: $(SRC) $(APP_SRC) $(APP_EXECUTABLE)

$(APP_EXECUTABLE): $(APP_OBJECTS) $(OBJECTS)
	$(CXX) $(LDFLAGS) $(APP_OBJECTS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	-rm -f $(APP_EXECUTABLE)
	find . -name "*.o" -print0 | xargs -0 rm -f
#	find . -name "*.gcda" -print0 | xargs -0 rm -f
#	find . -name "*.gcno" -print0 | xargs -0 rm -f
 
git:
	git add .
	git commit -m "edit - Anhar" -m 
	git push -u origin master