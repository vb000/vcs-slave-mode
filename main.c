extern int vcs_main(int argc, char** argv);
extern void VcsInit();
extern void VcsSimUntil(int*);

int main(int argc, char** argv) {
	argv[0] = "libhello.so";
	int t = 10;

	vcs_main(argc, argv);
	VcsInit();
	VcsSimUntil(&t);

	return 0;
}
