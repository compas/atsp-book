#
# Makefile for MCHF Atomic Structure Package
# Created by C. Froese Fischer, December 1988
#  ....  Make the COMmon library

#  ....  Location of libraries and binaries
LIB = ../../bin

# Compiler and flags
FC     = gfortran
FFLAGS = -O2 -std=legacy
#FFLAGS += -Wall -Wextra -Wno-unused -Wno-unused-dummy-argument
#FFLAGS += -g -fcheck=all
PFLAGS = $(FFLAGS)

.PHONY : all clean

all: libcom.a

clean:
	-rm -f *.o *.mod

COMSRC  = acurat.f bisect.f bwint.f ca.f cb.f eptr.f factrl.f fk.f gk.f\
	  gracah.f hnorm.f hwf.f inita.f initr.f intact.f lineqn.f\
	  lval.f pack.f reform.f rk.f rme.f sn.f symmeq.f\
          tinvit.f tql2.f trbak1.f tred1.f tred2.f vk.f

COMOBJS = acurat.o bisect.o bwint.o ca.o cb.o eptr.o factrl.o fk.o gk.o\
          gracah.o hnorm.o hwf.o inita.o initr.o intact.o lineqn.o\
          lval.o pack.o reform.o rk.o rme.o sn.o symmeq.o\
          tinvit.o tql2.o trbak1.o tred1.o tred2.o vk.o


# make the archive library

libcom.a : $(COMOBJS)
	ar r libcom.a $(COMOBJS)
	mv libcom.a $(LIB)
