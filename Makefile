INCLUDE_DIR = include

CC = cl
CPPFLAGS = -nologo -EHsc -I$(INCLUDE_DIR)
LINK = link
LINKFLAGS = -nologo

OBJ_FILES = objs\main.obj objs\vector.obj objs\binary_search_tree.obj

all: bin\vec_prog.exe

bin\vec_prog.exe : $(OBJ_FILES)
	$(LINK) $(LINKFLAGS) $(**) -OUT:bin\vec_prog.exe
	bin\vec_prog

{src}.cpp{objs}.obj:
	$(CC) $(CPPFLAGS) -c $< -Fo:$(@)


objs\vector.obj: include\vector.h
objs\binary_search_tree.obj: include\binary_search_tree.h
objs\main.obj: include\vector.h include\binary_search_tree.h

clean :
	del bin\vec_prog.exe
	del objs\*.obj
