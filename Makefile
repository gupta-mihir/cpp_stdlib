CC = cl
CPPFLAGS = /nologo /EHsc
LINK = link
LINKFLAGS = /nologo

all: vec_prog.exe


vec_prog.exe : main.obj vector.obj binary_search_tree.obj
	$(LINK) $(LINKFLAGS) $** /OUT:vec_prog.exe
	vec_prog

main.obj : $*.cpp
	$(CC) $(CPPFLAGS) /c $*.cpp

binary_search_tree.obj vector.obj : $*.cpp $*.h
	$(CC) $(CPPFLAGS) /c $*.cpp


clean :
	del vec_prog.exe
	del *.obj
