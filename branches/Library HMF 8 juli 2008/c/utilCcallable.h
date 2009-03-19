/*
 **** ADAMS/Solver include %W% %G%
 */
/*
//
// ***********************************************************
// *****               COPYRIGHT (C) 1997                *****
// *****           BY Mechanical Dynamics, Inc.          *****
// *****              ALL RIGHTS RESERVED                *****
// ***********************************************************
//
//
//             Written by Mark N. Pickelmann (MNP)
//
// Name:
// utilCcallable.c
//
// Description: C wrapers for FORTRAN routines
//
//
// Caveats:
//    
// See Also:
//    
// Notes:
//
//
// History: 
//      
// 01-May-98 - MNP -   Creation/Implementation
//
//
//
//
//
//
//
*/
#ifndef UTILCCALLABLE_H
#define UTILCCALLABLE_H

#ifndef UTILPORTNAMES_H
typedef int            BOOL;
typedef double         REAL;
#endif

#if (defined port2pcnt)
#   define LINKDLL __declspec(dllexport)
#else
#   define LINKDLL
#endif

/*ADAMS_NEEDS_PARTIALS*/
LINKDLL void c_adams_needs_partials(int *eval_jac);
/* AKISPL */
LINKDLL void c_akispl(REAL xval, REAL zval, int id, int iord, REAL *array, BOOL *errflg);
/* ANALYS */
LINKDLL void c_analys(char *antype, char *cid, REAL timbeg, REAL timend, BOOL init, int *istat);
/* BISTOP */
LINKDLL void c_bistop(REAL x, REAL dxdt, REAL x1, REAL x2,  REAL k, REAL e, 
	      REAL cmax, REAL d, int iord, REAL *vector, BOOL *errflg);
/* CHEBY */
LINKDLL void c_cheby(REAL x, REAL x0, REAL *par, int npar, int iord, REAL *value, BOOL *errflg);
/* CUBSPL */
LINKDLL void c_cubspl(REAL xval, REAL zval, int id, int iord, REAL *array, BOOL *errflg);
/* DATOUT */
LINKDLL void c_datout(int *istat);
/* ERRMES */
LINKDLL void c_errmes(BOOL errflg, char *mesage, int id, char *endflg);
/* FORCOS */
LINKDLL void c_forcos(REAL x, REAL x0, REAL w,REAL *par, int npar, int iord, REAL *value, BOOL *errflg);
/* FORSIN */
LINKDLL void c_forsin(REAL x, REAL x0, REAL w,REAL *par, int npar, int iord, REAL *value, BOOL *errflg);
/* GETCPU */
LINKDLL void c_getcpu(REAL *value);
/* GETINM */
LINKDLL void c_getinm(BOOL *value);
/* GETINT */
LINKDLL void c_getint(char *value);
/* GETMOD */
LINKDLL void c_getmod(int *mode);
/* GETSLV */
LINKDLL void c_getslv(char *value);
/* GETSTM */
LINKDLL void c_getstm(REAL *value);
/* GETVER */
LINKDLL void c_getver(char *value);
/* GTARAY */
LINKDLL void c_gtaray(int id, REAL *array, int *number, int *istat);
/* GTCMAT */
/* NOTE: For C the matrix c should be passed as a vector of 
 *       minimum length = 36*nmid**2 and ndim = 6*nmid.  
 *       The results will be returned column wise with 
 *       iIndex = iRow + 6*iCol*nmid and c[iIndex] = c[iRow][iCol].
 */
LINKDLL void c_gtcmat(int nmid, int *mid, int ndim, REAL *c, int *istat);
/* GTUNTS */
LINKDLL void c_gtunts(BOOL *exists, REAL *scales, char *units );
/* GTSTRG */
LINKDLL void c_gtstrg(int id, char *string, int *nchars, int *istat);  
/* HAVSIN */
LINKDLL void c_havsin(REAL x, REAL x0, REAL h0, REAL x1, REAL h1, int iord, 
	      REAL *value, BOOL *errflg);
/* IMPACT */
LINKDLL void c_impact(REAL x, REAL dxdt, REAL x1, REAL k, REAL e, REAL cmax, REAL d, 
              int iord, REAL *vector, BOOL *errflg);
/* ISTRNG */
LINKDLL void c_istrng(int number, char *string, int *length, int *istat);
/* MODIFY */
LINKDLL void c_modify(char *comand, int *istat);
/* POLY */
LINKDLL void c_poly(REAL x, REAL x0, REAL *par, int npar, int iord, 
	    REAL *value, BOOL *errflg);
/* PUT_SPLINE */
LINKDLL void c_put_spline(int id, int nxvals, int nzvals, REAL *xvals, REAL *yvals, REAL *zvals, BOOL *errflg);
/* RCNVRT */
LINKDLL void c_rcnvrt(char *sys1, REAL *coord1, char *sys2, REAL *coord2, int *istat);
/* RSTRNG */
LINKDLL void c_rstrng(REAL reel, char *string, int *length, int *istat);
/* SHF */
LINKDLL void c_shf(REAL x, REAL x0, REAL a, REAL w, REAL phi, REAL b, int iord,
	   REAL *value, BOOL *errflg);
/* STEP */
LINKDLL void c_step(REAL x, REAL x0, REAL h0, REAL x1, REAL h1, 
	    int iord, REAL *value, BOOL *errflg);
/* SYSARY */
LINKDLL void c_sysary(char *fncnam, int *ipar, int nsize, REAL *states, int *nstate, 
	      BOOL *errflg);
/* SYSFNC */
LINKDLL void c_sysfnc(char *fncnam, int *ipar, int nsize, REAL *states, BOOL *errflg);
LINKDLL void c_syspar(char *fncnam, int *ipar, int nsize, double *states, int nstate, int *errflg);
/* TCNVRT */
LINKDLL void c_tcnvrt(char *sys1, REAL *coord1, char *sys2, REAL *coord2, int *istat);
/* TIMGET */
LINKDLL void c_timget(REAL *time);
/* TIRARY */
LINKDLL void c_tirary(int tireid, char *fncnam, REAL *states, int *nstate, BOOL *errflg);
/* UCOVAR */
LINKDLL void c_ucovar(int id, int nparts, int *lparts, int nvars, int *lvars);
/* USRMES */
LINKDLL void c_usrmes(BOOL msgflg, char *mesage, int id, char *msgtyp);

#endif
