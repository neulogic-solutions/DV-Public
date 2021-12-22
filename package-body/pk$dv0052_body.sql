create or replace PACKAGE BODY pk$dv0052 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE 		  : Dv Portfolio Group Interface <br/>
  *  SCHEMA			  : SYMPLUS <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 20-OCT-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  FUNCTION fn_edt_prv RETURN BOOLEAN IS 
  --
    BEGIN 
		RETURN pkdv_11_ptfg_itf.fn_edt_prv; 
    END fn_edt_prv;
  --
  PROCEDURE pr_mnt IS 
    BEGIN 
		pkdv_11_ptfg_itf.pr_mnt; 
		pkdv_00.pr_commit; 
	END pr_mnt;
  --
  PROCEDURE pr_mnt_upd (pi_itf_k NUMBER, pi_acct_k IN NUMBER) IS 
    BEGIN 
		pkdv_11_ptfg_itf.pr_mnt_upd  (pi_itf_k   => pi_itf_k, 
									  pi_acct_k  => pi_acct_k); 
		pkdv_00.pr_commit; 
	END pr_mnt_upd;
  --
  PROCEDURE pr_val (pi_ptfg_k NUMBER DEFAULT NULL) IS 
    BEGIN 
		pkdv_11_ptfg_itf.pr_val (pi_ptfg_k => pi_ptfg_k); 
		pkdv_00.pr_commit; 
	END pr_val;
	--
  --
END pk$dv0052;
/