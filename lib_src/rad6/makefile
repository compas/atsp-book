#
# Makefile for MCHF Atomic Structure Package
# Created by C. Froese Fischer, December 1988
#  ....  Make the Rad6 library

#  ....  Location of libraries and binaries
LIB = ../../bin

# Compiler and flags
FC     = gfortran
FFLAGS = -O2 -std=legacy
#FFLAGS += -Wall -Wextra -Wno-unused -Wno-unused-dummy-argument
#FFLAGS += -g -fcheck=all
PFLAGS = $(FFLAGS)

.PHONY : all clean
all: librad6.a

clean:
	-rm -f *.o *.mod

#  ....  Make the RADial library for 60 orbitals
#   ...  Definitions for the RAD Libraries

RADSRC =  dyk.f ecore.f grad.f hl.f hlc.f quadr.f quads.f\
	  rlshft.f ykf.f zeta.f zk.f

RADOBJS = dyk.o ecore.o grad.o hl.o hlc.o quadr.o quads.o\
	  rlshft.o ykf.o zeta.o zk.o

#
librad6.a : $(RADOBJS)
	 ar r librad6.a $(RADOBJS)
	 mv librad6.a $(LIB)
