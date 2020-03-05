all: hello
	./hello

hello: main.c libhello.so
	gcc main.c -o hello -I$$VCS_HOME/include \
		-L. -Wl,-rpath,. -lhello $$VCS_HOME/linux64/lib/vcs_tls.o \
		-L$$VCS_HOME/linux64/lib -lvcsnew -Wl,-rpath,$$VCS_HOME/linux64/lib

libhello.so: hello.sv
	$$VCS_HOME/bin/vcs -full64 -slave -e vcs_main hello.sv -o libhello.so

clean:
	-rm -rf csrc *.daidir ucli.key
	-rm hello libhello.so
