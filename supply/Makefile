all: libfoo.a jhwFoo.a
libfoo.a: foo.c foo.h
	cc -c -g foo.c
	ar rs libfoo.a foo.o
	@echo "built libfoo.a!"
jhwFoo.a: jhwFoo.c jhwFoo.h
	cc -c -g jhwFoo.c
	ar -crs libjhwFoo.a jhwFoo.o
	@echo "built jhwFoo.a!"
