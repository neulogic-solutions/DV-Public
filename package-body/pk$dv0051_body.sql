create or replace PACKAGE BODY pk$dv0051 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE 		  : DV Portfolio Groups Parameters <br/>
  *  SCHEMA			  : SYMPLUS <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 15-OCT-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  FUNCTION fn_edt RETURN BOOLEAN IS 
  --
    BEGIN 
		RETURN pkdv_11_ptfg_xpv.fn_edt; 
    END fn_edt;
  --
  PROCEDURE pr_mnt (pi_key NUMBER) IS 
    BEGIN 
		pkdv_11_ptfg_xpv.pr_mnt (pi_key => pi_key); 
		pkdv_00.pr_commit; 
	END pr_mnt;
  --
  PROCEDURE pr_mnt_all IS 
    BEGIN 
		pkdv_11_ptfg_xpv.pr_mnt_all; 
		pkdv_00.pr_commit; 
	END pr_mnt_all;
  --
  PROCEDURE pr_prc (pi_rec IN dv_vt_00_xpv_e%ROWTYPE) IS 
    BEGIN 
		pkdv_11_ptfg_xpv.pr_prc (pi_rec => pi_rec); 
		pkdv_00.pr_commit; 
	END pr_prc;
	--
  --
END pk$dv0051;
/