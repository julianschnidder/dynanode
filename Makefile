FC := gfortran
MAKE := make
FMKMF := fmkmf
MAKEFILE := Makefile.fmkmf
RM := rm -f

all: deps
	$(MAKE) -f $(MAKEFILE)

deps:
	export FMKMF_F90=$(FC)
	$(FMKMF) main.f90 > $(MAKEFILE)

clean: deps
	$(MAKE) -f $(MAKEFILE) clean

distclean: clean
	$(RM) $(MAKEFILE) main *~

