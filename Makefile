#All Relevant Files
Files = Main.o

#Compiler Choice
Compiler = g++

#Compile Flags
Flags = -Wall -Wshadow -Wvla -Werror

#Final Binary
Exec: $(Files)
	@echo "Linking all Object Files"
	@$(Compiler) $(Flags) $(Files) -o Exec

Main.o: Main.cpp
	@echo "Building Main..."
	@$(Compiler) $(Flags) -o Main.o -c Main.cpp

#sub.o: sub.cpp
#	@echo "Building sub..."
#	@$(Compiler) $(Flags) -o sub.o -c sub.cpp
