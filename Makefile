all:
	cls
	cl /nologo /EHsc main.cpp
	main





vec_prog.exe : main.obj vector.obj
	cl /nologo /EHsc main.obj vector.obj /Fe"vec_prog.exe"

main.obj : main.cpp 
	cl /nologo /EHsc /c main.cpp

vector.obj : vector.cpp vector.h
	cl /nologo /EHsc /c vector.cpp



