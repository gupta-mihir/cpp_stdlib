all: vec_prog.exe


vec_prog.exe : main.obj vector.obj
	cl /nologo /EHsc main.obj vector.obj /Fe"vec_prog.exe"
	vec_prog

main.obj : main.cpp 
	cl /nologo /EHsc /c main.cpp

vector.obj : vector.cpp vector.h
	cl /nologo /EHsc /c vector.cpp

clean :
	del vec_prog.exe
	del *.obj
