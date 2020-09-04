all: vec_prog.exe


vec_prog.exe : main.obj vector.obj binary_search_tree.obj
	cl /nologo /EHsc main.obj vector.obj binary_search_tree.obj /Fe"vec_prog.exe"
	vec_prog

main.obj : main.cpp 
	cl /nologo /EHsc /c main.cpp

vector.obj : vector.cpp vector.h
	cl /nologo /EHsc /c vector.cpp

binary_search_tree.obj : binary_search_tree.cpp binary_search_tree.h
	cl /nologo /EHsc /c binary_search_tree.cpp



clean :
	del vec_prog.exe
	del *.obj
