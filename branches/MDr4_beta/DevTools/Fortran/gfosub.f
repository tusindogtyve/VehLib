      SUBROUTINE GFOSUB(ID, TIME, PAR, NPAR, DFLAG,
     &                  IFLAG, RESULT)

C This file is part of SDlib_plugin.
C    
C  Copyright (c) 2008 Sauer-Danfoss http://www.sauer-danfoss.com
C
C Permission is hereby granted, free of charge, to any person obtaining
C a copy of this software and associated documentation files (the
C "Software"), to deal in the Software without restriction, including
C without limitation the rights to use, copy, modify, merge, publish,
C distribute, sublicense, and/or sell copies of the Software, and to
C permit persons to whom the Software is furnished to do so, subject to
C the following conditions:
C
C The above copyright notice and this permission notice shall be
C included in all copies or substantial portions of the Software.
C 
C THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
C EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
C MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
C NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
C LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
C OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
C WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

C
C === Type and dimension statements =======================
C
C   Note:  For a machine with 60 or more bits per word,
C          substitute "REAL" or "DOUBLE PRECISION".
C
C --- External variable definitions -----------------------
C
      INTEGER                             ID
      DOUBLE PRECISION                    TIME
      DOUBLE PRECISION                    PAR( * )
      INTEGER                             NPAR
      LOGICAL                             DFLAG
      LOGICAL                             IFLAG
      DOUBLE PRECISION                    RESULT(6)
C
C   ID           Identifier of calling GFORCE statement
C   TIME         Current time
C   PAR          Array containing passed parameters
C   NPAR         Number of passed parameters
C   DFLAG        Differencing flag
C   IFLAG        Initial pass flag
C   RESULT       Array (dimension 6) of computed GFORCE
C                components returned to ADAMS
C
C --- Local variable and parameter definitions ------------
C
      DOUBLE PRECISION KTY, KRY, KTZ, KRZ, CT, CR, LENGTH
      DOUBLE PRECISION TDISP(3), TVEL(3)
      DOUBLE PRECISION AX, WX, N(5), X, beam(2), Fn
      DOUBLE PRECISION DISPH(3), DISPJ(3), DELTA(2), ANGH(3), ANGJ(3)
      INTEGER          IPAR(4), EM, HM, IM, JM, NSTATES
      INTEGER          IPARH(3), IPARJ(3)
      INTEGER          FLAG, METHOD
      LOGICAL          ERRFLG
C
C ===Executable code ======================================
C
C     Assign readable variable names to passed parameters
C     *** List of Parameters ***
C     PAR(1) = endMarker (The marker at the end of the oppesite beam)
C     PAR(2) = hMarker (The marker at the previous segment, beamELM)
C     PAR(3) = iMarker (The marker of the this segment, beamELM)
C     PAR(4) = jMarker (The marker at the next segment, beamELM)
C     PAR(5) = The length of this segment
C     PAR(6) = Flag, if first: flag=1, last: flag=2, else: flag=0
C     PAR(7) = Translational spring stiffness, Y
C     PAR(8) = Damping, Y
C     PAR(9) = Translational spring stiffness, Z
C     PAR(10) = Damping, Z
C     PAR(11) = Torsional spring stiffness
C     PAR(12)= Torsional damping
C     
      EM = NINT(PAR(1))
      HM = NINT(PAR(2))
      IM = NINT(PAR(3))
      JM = NINT(PAR(4))
      LENGTH = PAR(5)
      FLAG  = NINT(PAR(6))
C
C     The stiffness and damping coefficients is set:
C
      KTY = PAR(7)
      CTY = PAR(8)
      KTZ = PAR(9)
      CTZ = PAR(10)
      KR  = PAR(11)
      CR  = PAR(12)
      METHOD = NINT(PAR(13))
C
C     Call SYSARY to collect information for the
C     calculations below. Note: if IFLAG is true, this
C     call is actually setting functional dependencies.
C
C --- Measure the distance from marker i to the end marker.
C
      IPAR(1) = EM
      IPAR(2) = IM
      IPAR(3) = IM
      IPAR(4) = IM
      CALL SYSARY('TVEL', IPAR, 4, TVEL, NSTATES, ERRFLG)
      CALL ERRMES(ERRFLG, 'Error calling SYSARY for TVEL',
     &            ID, 'STOP')
      CALL SYSARY('TDISP', IPAR, 3, TDISP, NSTATES, ERRFLG)
      CALL ERRMES(ERRFLG, 'Error calling SYSARY for TDISP',
     &            ID, 'STOP')
C
C     calculate the relative angle and angular velocity
C     between the tow beams. For calculating torsional spring
C     force.
C
      CALL SYSFNC('AX', IPAR, 2, AX, ERRFLG)
      CALL ERRMES(ERRFLG, 'Error calling SYSFNC for AX',
     &            ID, 'STOP')
      CALL SYSFNC('WX', IPAR, 3, WX, ERRFLG)
      CALL ERRMES(ERRFLG, 'Error calling SYSFNC for WX',
     &            ID, 'STOP')
C
C     calculate the rotation and displacement to the beamELM 
C     markers h and j relative to the marker i.
C     these values are used for calculation of the deflection 
C     of the beam elements.
C
      IPARH(1) = HM
      IPARH(2) = IM
      IPARH(3) = IM
      CALL SYSARY('TDISP',IPARH, 3, DISPH, NSTATES, ERRFLG)
      CALL ERRMES(ERRFLG, 'Error calling SYSARY for TDISP',
     &            ID, 'STOP')
      CALL SYSARY('RDISP',IPARH, 2, ANGH, NSTATES, ERRFLG)
      CALL ERRMES(ERRFLG, 'Error calling SYSARY for RDISP',
     &            ID, 'STOP')
      IPARJ(1) = JM
      IPARJ(2) = IM
      IPARJ(3) = IM
      CALL SYSARY('TDISP',IPARJ, 3, DISPJ, NSTATES, ERRFLG)
      CALL ERRMES(ERRFLG, 'Error calling SYSARY for TDISP',
     &            ID, 'STOP')
      CALL SYSARY('RDISP',IPARH, 2, ANGJ, NSTATES, ERRFLG)
      CALL ERRMES(ERRFLG, 'Error calling SYSARY for RDISP',
     &            ID, 'STOP')
C
C     Shape Functions
C
      IF (-LENGTH < TDISP(1) .AND. TDISP(1) < LENGTH) THEN
        X = ABS(TDISP(1))
        N(1) = 1.0 - (3.0*X**2)/(LENGTH**2) + (2.0*X**3)/(LENGTH**3)
        N(2) = X - (2.0*X**2)/(LENGTH) + (X**3)/(LENGTH**2)
        N(3) = (3.0*X**2)/(LENGTH**2) - (2.0*X**3)/(LENGTH**3)
        N(4) = - (X**2)/(LENGTH) + (X**3)/(LENGTH**2)
C       A linear distribution for torsion
        N(5) = (LENGTH - X)/(LENGTH)
C
C       Calculate the distance from the neutral axis to the 
C       end marker.
C
        IF(TDISP(1) < 0) THEN
C         Convert euler angles to rotations
          CALL RCNVRT ('EULER', ANGH, 'AXAYAZ', ANGH, ISTAT)
          beam(1) = DISPH(2)*N(3) - ANGH(3)*N(4)
          beam(2) = DISPH(3)*N(3) + ANGH(2)*N(4)
        ELSE
C         Convert euler angles to rotations
          CALL RCNVRT ('EULER', ANGJ, 'AXAYAZ', ANGJ, ISTAT)
          beam(1) = DISPJ(2)*N(3) - ANGJ(3)*N(4)
          beam(2) = DISPJ(3)*N(3) + ANGJ(2)*N(4)
        END IF
        DELTA(1) = TDISP(2) - beam(1)
        DELTA(2) = TDISP(3) - beam(2)
      END IF
C
C     Calculate the force
C
      RESULT(1) = 0.0
      RESULT(2) = 0.0
      RESULT(3) = 0.0
      RESULT(4) = 0.0
      RESULT(5) = 0.0
      RESULT(6) = 0.0
C     Method = 3: CENL
      IF(METHOD == 3) THEN
          IF (-LENGTH < TDISP(1) .AND. TDISP(1) < 0.0) THEN
              RESULT(2) = (KTY * DELTA(1) + CTY * TVEL(2))*N(1)
              RESULT(3) = (KTZ * DELTA(2) + CTZ * TVEL(3))*N(1)
              RESULT(4) = (KR * AX + CR * WX)*N(5)
              RESULT(5) = (KTZ * DELTA(2) + CTZ * TVEL(3))*N(2)
              RESULT(6) = -(KTY * DELTA(1) + CTY * TVEL(2))*N(2)
          END IF
          IF (0.0 <= TDISP(1) .AND. TDISP(1) < LENGTH) THEN
              RESULT(2) = (KTY * DELTA(1) + CTY * TVEL(2))*N(1)
              RESULT(3) = (KTZ * DELTA(2) + CTZ * TVEL(3))*N(1)
              RESULT(4) = (KR * AX + CR * WX)*N(5)
              RESULT(5) = -(KTZ * DELTA(2) + CTZ * TVEL(3))*N(2)
              RESULT(6) = (KTY * DELTA(1) + CTY * TVEL(2))*N(2)
          END IF
C     Method = 2: ramp
      ELSE IF(METHOD == 2)THEN
          IF (-LENGTH < TDISP(1) .AND. TDISP(1) < 0.0) THEN
              RESULT(2) = (KTY * DELTA(1) + CTY * TVEL(2))*N(5)
              RESULT(3) = (KTZ * DELTA(2) + CTZ * TVEL(3))*N(5)
              RESULT(4) = (KR * AX + CR * WX)*N(5)
              RESULT(5) = -RESULT(3) * TDISP(1)
              RESULT(6) = RESULT(2) * TDISP(1)
          END IF
          IF (0.0 <= TDISP(1) .AND. TDISP(1) < LENGTH) THEN
              RESULT(2) = (KTY * DELTA(1) + CTY * TVEL(2))*N(5)
              RESULT(3) = (KTZ * DELTA(2) + CTZ * TVEL(3))*N(5)
              RESULT(4) = (KR * AX + CR * WX)*N(5)
              RESULT(5) = -RESULT(3) * TDISP(1)
              RESULT(6) = RESULT(2) * TDISP(1)
          END IF
C     Method = 1: Descrete distribution
      ELSE IF(METHOD == 1)THEN
          IF (-LENGTH*0.5 < TDISP(1) .AND. 
     &                      TDISP(1) < LENGTH*0.5) THEN
              RESULT(2) = (KTY * DELTA(1) + CTY * TVEL(2))
              RESULT(3) = (KTZ * DELTA(2) + CTZ * TVEL(3))
              RESULT(4) = (KR * AX + CR * WX)
              RESULT(5) = -RESULT(3) * TDISP(1)
              RESULT(6) = RESULT(2) * TDISP(1)
          END IF
      END IF
C
C     Calculation of friction
C
C      Fn = sqrt(RESULT(2)**2 + RESULT(3)**2)
C      RESULT(1) = TANH(TVEL(1) * 9.1)*Fn *0.3
      RESULT(1) = 0.0;
      RETURN
      END
