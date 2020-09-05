CC = cl
CPPFLAGS = /nologo /EHsc
LINK = link
LINKFLAGS = /nologo

all: vec_prog.exe


vec_prog.exe : main.obj vector.obj binary_search_tree.obj
	$(LINK) $(LINKFLAGS) main.obj vector.obj binary_search_tree.obj /OUT:vec_prog.exe
	vec_prog

main.obj : main.cpp 
	$(CC) $(CPPFLAGS) /c main.cpp

vector.obj : vector.cpp vector.h
	$(CC) $(CPPFLAGS) /c vector.cpp

binary_search_tree.obj : binary_search_tree.cpp binary_search_tree.h
	$(CC) $(CPPFLAGS) /c binary_search_tree.cpp



clean :
	del vec_prog.exe
	del *.obj
