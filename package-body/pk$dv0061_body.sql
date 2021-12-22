create or replace PACKAGE BODY pk$dv0061 AS
  --
  /* Created By       : Sola Adebayo
  ** Date Created     : 08-NOV-2021
  ** Release Version  : 2.0
  **
  ** PURPOSE: PORTFOLIO Parameters
  **
  ** MODIFICATION HISTORY:
  **
  **    Modified By   : 
  **    Date          : 
  **    Version       : 
  **    Remarks       :
  **
  **    Modified By   :
  **    Date          :
  **    Version       :
  **    Remarks       :
  **  
  **
  */
  /* Package Variables */
  --  
  FUNCTION fn_edt RETURN BOOLEAN IS 
  --
    BEGIN 
		RETURN pkdv_11_ptf_xpv.fn_edt; 
    END fn_edt;
  --
  PROCEDURE pr_mnt (pi_key NUMBER) IS 
    BEGIN 
		pkdv_11_ptf_xpv.pr_mnt (pi_key => pi_key); 
		pkdv_00.pr_commit; 
	END pr_mnt;
  --
  PROCEDURE pr_mnt_all IS 
    BEGIN 
		pkdv_11_ptf_xpv.pr_mnt_all; 
		pkdv_00.pr_commit; 
	END pr_mnt_all;
  --
  PROCEDURE pr_prc (pi_rec IN dv_vt_00_xpv_e%ROWTYPE) IS 
    BEGIN 
		pkdv_11_ptf_xpv.pr_prc (pi_rec => pi_rec); 
		pkdv_00.pr_commit; 
	END pr_prc;
	--
  --
END pk$dv0061;
/