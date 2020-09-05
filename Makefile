CC = cl
CPPFLAGS = /nologo /EHsc
LINK = link
LINKFLAGS = /nologo

OBJ_FILES = vector.obj binary_search_tree.obj

all: vec_prog.exe


vec_prog.exe : main.obj $(OBJ_FILES)
	$(LINK) $(LINKFLAGS) $** /OUT:vec_prog.exe
	vec_prog

main.obj : $*.cpp
	$(CC) $(CPPFLAGS) /c $*.cpp

$(OBJ_FILES): $*.cpp $*.h
	$(CC) $(CPPFLAGS) /c $*.cpp


clean :
	del vec_prog.exe
	del *.obj
