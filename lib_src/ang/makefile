#
# Makefile for MCHF Atomic Structure Package
# Created by C. Froese Fischer, December 1988
#  ....  Make the ANGular library

LIB = ../../bin

# Compiler and flags
FC     = gfortran
FFLAGS = -O2 -std=legacy
PFLAGS = $(FFLAGS)

#    ... Definitions for the ANGular library
ANGSRC  = analy1.f analy2.f cfgin2.f cfgn1.f cfgo1.f cfgtst.f \
          cfp.f cfpd.f cfpf.f cfpp.f find.f gstate.f initt.f \
	  mumdad.f ntab1.f orth.f qsort.f save.f \
	  tensor.f tritst.f vijout.f

ANGOBJS = analy1.o analy2.o cfgin2.o cfgn1.o cfgo1.o cfgtst.o \
          cfp.o cfpd.o cfpf.o cfpp.o find.o gstate.o initt.o \
	  mumdad.o ntab1.o orth.o qsort.o save.o \
	  tensor.o tritst.o vijout.o

# libang.a -- make the archive library

libang.a : $(ANGOBJS) NJGRAF.o
	ar r libang.a $(ANGOBJS) NJGRAF.o
	mv libang.a $(LIB)
