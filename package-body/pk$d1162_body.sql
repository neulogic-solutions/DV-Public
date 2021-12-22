create or replace PACKAGE BODY pk$d1162 AS
  --
  /* Created By       : Sola Adebayo
  ** Date Created     : 27-OCT-2021
  ** Release Version  : 2.0
  **
  ** PURPOSE: DV Portfolio Ledger Interfaces
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
  --
  /* Package Variables */
  --
  FUNCTION fn_edt_prv RETURN BOOLEAN IS
  BEGIN
		RETURN pkdv_11_ptf_itf.fn_edt_prv;
	END fn_edt_prv; 
  --
  PROCEDURE pr_mnt IS
  BEGIN
		pkdv_11_ptf_itf.pr_mnt;
		pkdv_00.pr_commit;
	END pr_mnt;
  --
  PROCEDURE pr_mnt_upd (pi_itf_k NUMBER, pi_acct_k IN NUMBER)IS
  BEGIN
		pkdv_11_ptf_itf.pr_mnt_upd (pi_itf_k => pi_itf_k,
                            pi_acct_k => pi_acct_k);
		pkdv_00.pr_commit;
	END pr_mnt_upd;
  --
  PROCEDURE pr_val (pi_ptf_k NUMBER DEFAULT NULL)IS
  BEGIN
		pkdv_11_ptf_itf.pr_val (pi_ptf_k => pi_ptf_k);
		pkdv_00.pr_commit;
	END pr_val;
  --
END pk$d1162;
/