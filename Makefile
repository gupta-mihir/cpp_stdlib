CC = cl
CPPFLAGS = /nologo /EHsc
LINK = link
LINKFLAGS = /nologo

OBJ_FILES = main.obj vector.obj binary_search_tree.obj

all: vec_prog.exe


vec_prog.exe : $(OBJ_FILES)
	$(LINK) $(LINKFLAGS) $** /OUT:vec_prog.exe
	vec_prog

$(OBJ_FILES): $*.cpp
	$(CC) $(CPPFLAGS) /c $*.cpp

vector.obj: $*.h
binary_search_tree.obj: $*.h
main.obj: vector.h binary_search_tree.h

clean :
	del vec_prog.exe
	del *.obj
