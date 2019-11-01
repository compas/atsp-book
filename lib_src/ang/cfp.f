*
*     ------------------------------------------------------------------
*       C F P
*     ------------------------------------------------------------------
*
      SUBROUTINE CFP(LIJ,N,IVI,ILI,ISI,IVJ,ILJ,ISJ,COEFP)
      IMPLICIT DOUBLE PRECISION(A-H,O-Z)
      COMMON/INFORM/IREAD,IWRITE,IOUT,ISC(8)
*     MicroSoft FORTRAN does not allow the EXTERNAL declaration here
      EXTERNAL INITT
*
* === CHOOSES APPROPRIATE FRACTIONAL PARENTAGE SUBROUTINE
*
    9 FORMAT(69H UNNECESSARY ATTEMPT TO FORM CFP OF AN S-ELECTRON - THER
     :E IS AN ERROR)
      K=LIJ+1
      IF (K .GT. 4) K = 4
*
*     IF F-SHELL OR G-SHELL COEFFICIENT-OF-FRACTIONAL-PARENTAGE ROUTINES
*     ARE INCLUDED, THIS COMPUTED GO TO NEEDS MODIFYING TO ACCOUNT FOR
*     THIS
*

      GO TO (1,2,3,4,4) K
*
* --- FALSE CALL FOR S-SHELLS
*
    1 WRITE(IWRITE,9)
      STOP
*
* --- P-SHELLS
*
    2 CALL CFPP(N,ILI,ISI,ILJ,ISJ,COEFP)
      RETURN
*
* --- D-SHELLS
*
    3 CALL CFPD(N,IVI,ILI,ISI,IVJ,ILJ,ISJ,COEFP)
      RETURN
*
* --- F-SHELLS, G-SHELLS ETC. WITH UP TO TWO ELECTRONS
*
    4 CALL CFPF(N,IVI,ILI,ISI,IVJ,ILJ,ISJ,COEFP)
      RETURN
      END