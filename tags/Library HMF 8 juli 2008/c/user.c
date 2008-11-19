/*
GFOSUB user sub.
This is the subroutine that calculates contacts forces 
between flexible beam sections of telescopic booms.
*/


#include "userPortName.h"
#include "utilCcallable.h"
#include <float.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>


#define PI   3.141592654
#define DTOR 0.01745329252

VOID_FUNCTION GFOSUB(int *id, REAL *time, REAL *par, int *nPar, BOOL *dflag, BOOL *iflag, REAL *result)
{
	int M_end, M_h, M_i, M_j, flag, Method;
	double Length, KTY, CTY, KTZ, CTZ, KR, CR;
	int ipar[4];
	int iparH[3];
	int iparJ[3];
	double TVEL[3];
	double TDISP[3];
	double AX, WX, DISPH[3], ANGH[3], DISPJ[3], ANGJ[3], x, N[5], beam[2], DELTA[2];
	char tvel[4];
	char tdisp[5];
	char rdisp[5];
	char ax[2];
	char wx[2];
	char euler[5];
	char axayaz[6];

	//Variables for error handling
	int ns;
	int istat;
	BOOL errflag;
    /*
	Assign readable variable names to passed parameters
    *** List of Parameters ***
    PAR[0] = endMarker (The marker at the end of the oppesite beam)
    PAR[1] = hMarker (The marker at the previous segment, beamELM)
    PAR[2] = iMarker (The marker of the this segment, beamELM)
    PAR[3] = jMarker (The marker at the next segment, beamELM)
    PAR[4] = The length of this segment
    PAR[5] = Flag, if first: flag=1, last: flag=2, else: flag=0
    PAR[6] = Translational spring stiffness, Y
    PAR[7] = Damping, Y
    PAR[8] = Translational spring stiffness, Z
    PAR[9] = Damping, Z
    PAR[10] = Torsional spring stiffness
    PAR[11] = Torsional damping
	PAR[12] = Method, 1 = ramp, 2 = linear, 3 = CENL
    */
    M_end = (int)(par[0]);
    M_h = (int)(par[1]);
    M_i = (int)(par[2]);
    M_j = (int)(par[3]);
    Length = par[4];
    flag  = (int)(par[5]);
    /* The stiffness and damping coefficients is set: */
    KTY = par[6];
    CTY = par[7];
    KTZ = par[8];
    CTZ = par[9];
    KR  = par[10];
    CR  = par[11];
    Method = (int)(par[12]);
	
	strcpy_s(tvel, 0,"TVEL");
	strcpy_s(tdisp, 0, "TDISP");
	strcpy_s(rdisp, 0, "RDISP");
	strcpy_s(ax, 0, "AX");
	strcpy_s(wx, 0, "AW");
	strcpy_s(euler, 0, "EULER");
	strcpy_s(axayaz, 0, "AXAYAZ");

	/* Measure the distance from marker i to the end marker. */
	ipar[0] = M_end;
	ipar[1] = M_i;
	ipar[2] = M_i;
	ipar[3] = M_i;
	c_sysary(tvel, ipar, 4, TVEL, &ns, &errflag);
    c_errmes(errflag, "Error calling c_sysary for TVEL\0", *id, "STOP\0");
    c_sysary(tdisp, ipar, 3, TDISP, &ns, &errflag);
    c_errmes(errflag, "Error calling SYSARY for TDISP\0", *id, "STOP\0");
	// calculate the ax (x-angle)
	c_sysfnc(ax, ipar, 2, &AX, &errflag);
	c_errmes(errflag, "Error calling SYSFNC for AX\0", *id, "STOP\0");
	// calculate the angular velocity
	c_sysfnc(wx, ipar, 3, &WX, &errflag);
	c_errmes(errflag, "Error calling SYSFNC for WX\0", *id, "STOP\0");
    /*
    calculate the rotation and displacement to the beamELM 
    markers h and j relative to the marker i.
    these values are used for calculation of the deflection 
    of the beam elements.
    */
	iparH[0] = M_h;
	iparH[1] = M_i;
	iparH[2] = M_i;
	c_sysary(tdisp, iparH, 3, DISPH, &ns, &errflag);
	c_errmes(errflag, "Error calling SYSARY for TDISP\0", *id, "STOP\0");
	c_sysary(rdisp, iparH, 2, ANGH, &ns, &errflag);
	c_errmes(errflag, "Error calling SYSARY for RDISP\0", *id, "STOP\0");
	iparJ[0] = M_j;
	iparJ[1] = M_i;
	iparJ[2] = M_i;
	c_sysary(tdisp, iparJ, 3, DISPJ, &ns, &errflag);
	c_errmes(errflag, "Error calling SYSARY for TDISP\0", *id, "STOP\0");
	c_sysary(rdisp, iparH, 2, ANGJ, &ns, &errflag);
	c_errmes(errflag, "Error calling SYSARY for RDISP\0", *id, "STOP\0");
	/* 
	Shape Functions 
	*/
	if (-Length < TDISP[0] && TDISP[0] < Length){
		x = abs(TDISP[0]);
		N[0] = 1.0 - (3.0*x*x)/(Length*Length) + (2.0*x*x*x)/(Length*Length*Length);
		N[1] = x - (2.0*x*x)/(Length) + (x*x*x)/(Length*Length);
		N[2] = (3.0*x*x)/(Length*Length) - (2.0*x*x*x)/(Length*Length*Length);
		N[3] = - (x*x)/(Length) + (x*x*x)/(Length*Length);
		//A linear distribution for torsion
		N[4] = (Length - x)/(Length);
        /*
        Calculate the distance from the neutral axis to the 
        end marker.
        */
		if(TDISP[0] < 0){
			// Convert euler angles to rotations
			c_rcnvrt(euler, ANGH, axayaz, ANGH, &istat);
			beam[0] = DISPH[1]*N[2] - ANGH[2]*N[3];
			beam[1] = DISPH[2]*N[2] + ANGH[1]*N[3];
		}else{
			// Convert euler angles to rotations
			c_rcnvrt(euler, ANGJ, axayaz, ANGJ, &istat);
			beam[0] = DISPJ[1]*N[2] - ANGJ[2]*N[3];
			beam[1] = DISPJ[2]*N[2] + ANGJ[1]*N[3];
		}
		DELTA[0] = TDISP[1] - beam[0];
		DELTA[1] = TDISP[2] - beam[1];
	}
	/*
	Calculate the force
	*/
	result[0] = 0.0;
	result[1] = 0.0;
	result[2] = 0.0;
	result[3] = 0.0;
	result[4] = 0.0;
	result[5] = 0.0;
	// Method = 3: CENL
	if(Method == 3){
		if(-Length < TDISP[0] && TDISP[0] < 0.0){
			result[1] = (KTY * DELTA[0] + CTY * TVEL[1])*N[0];
			result[2] = (KTZ * DELTA[1] + CTZ * TVEL[3])*N[0];
			result[3] = (KR * AX + CR * WX)*N[4];
			result[4] = (KTZ * DELTA[1] + CTZ * TVEL[2])*N[1];
			result[5] = -(KTY * DELTA[0] + CTY * TVEL[1])*N[1];
		}
		if(0.0 <= TDISP[0] && TDISP[0] < Length){
			result[1] = (KTY * DELTA[0] + CTY * TVEL[1])*N[0];
			result[2] = (KTZ * DELTA[1] + CTZ * TVEL[2])*N[0];
			result[3] = (KR * AX + CR * WX)*N[4];
			result[4] = -(KTZ * DELTA[1] + CTZ * TVEL[2])*N[1];
			result[5] = (KTY * DELTA[0] + CTY * TVEL[1])*N[1];
		}
	}
	// Method = 2: ramp
	if(Method == 2){
		if(-Length < TDISP[0] && TDISP[0] < 0.0){
			result[1] = (KTY * DELTA[0] + CTY * TVEL[1])*N[4];
			result[2] = (KTZ * DELTA[1] + CTZ * TVEL[2])*N[4];
			result[3] = (KR * AX + CR * WX)*N[4];
			result[4] = -result[2] * TDISP[0];
			result[5] = result[1] * TDISP[0];
		}
		if(0.0 <= TDISP[0] && TDISP[0] < Length){
			result[1] = (KTY * DELTA[0] + CTY * TVEL[1])*N[4];
			result[2] = (KTZ * DELTA[1] + CTZ * TVEL[2])*N[4];
			result[3] = (KR * AX + CR * WX)*N[4];
			result[4] = -result[2] * TDISP[0];
			result[5] = result[1] * TDISP[0];
		}
	}
	// Method = 1: Descrete distribution
	if(Method == 1){
		if(-Length*0.5 < TDISP[0] && TDISP[0] < Length*0.5){
			result[1] = (KTY * DELTA[0] + CTY * TVEL[1]);
			result[2] = (KTZ * DELTA[1] + CTZ * TVEL[2]);
			result[3] = (KR * AX + CR * WX);
			result[4] = -result[2] * TDISP[0];
			result[5] = result[1] * TDISP[0];
		}
	}
	/*
	Calculation of friction
	*/
//	Fn = sqrt(result[1]*result[1] + result[2]*result[2]);
//	result[0] = TANH(TVEL[0] * 9.1)*Fn *0.3;
	result[0] = 0.0;
}

