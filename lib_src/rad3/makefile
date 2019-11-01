#
# Makefile for MCHF Atomic Structure Package
# Created by C. Froese Fischer, December 1988
#  ....  Make the Rad3 library

#  ....  Location of libraries and binaries
LIB = ../../bin

# Compiler and flags
FC     = gfortran
FFLAGS = -O2 -std=legacy
PFLAGS = $(FFLAGS)

#  ....  Make the RADial library for 30 orbitals
#   ...  Definitions for the RAD Libraries

RADSRC =  dyk.f ecore.f grad.f hl.f hlc.f quadr.f quads.f\
	  rlshft.f ykf.f zeta.f zk.f

RADOBJS = dyk.o ecore.o grad.o hl.o hlc.o quadr.o quads.o\
	  rlshft.o ykf.o zeta.o zk.o

#
librad3.a : $(RADOBJS)
	 ar r librad3.a $(RADOBJS)
	 mv librad3.a $(LIB)
