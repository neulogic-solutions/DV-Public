create or replace PACKAGE BODY pk$dv0011 AS
  --
  /* Created By       : Sola Adebayo
  ** Date Created     : 30-SEP-2021
  ** Release Version  : 2.0
  **
  ** PURPOSE: Setup - Currencies
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
  ** Copyright:  Neulogic Solutions Ltd, 2019
  **
  */
  --
  /* Package Variables */
  --
  PROCEDURE pr_prvs (pi_key  IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2)IS
	BEGIN
    pkdv_00_curr.pr_prvs (pi_key => pi_key,
                     po_ins_yn => po_ins_yn,
                     po_upd_yn => po_upd_yn, 
                     po_del_yn => po_del_yn,
                     po_apr_yn => po_apr_yn,
                     po_aud_yn => po_aud_yn);
		pkdv_00.pr_commit;
	END pr_prvs;
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_00_curr_e%ROWTYPE)IS
  BEGIN
		pkdv_00_curr.pr_prc (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_prc;
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_00_curr%ROWTYPE IS
  BEGIN
		RETURN pkdv_00_curr.fn_dtl (pi_key => pi_key);
	END fn_dtl;
  --  
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_00_curr_e%ROWTYPE IS
  BEGIN
		RETURN pkdv_00_curr.fn_dtl_e (pi_key => pi_key);
	END fn_dtl_e;
  --  
  --
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER)IS
  BEGIN
		pkdv_00_curr.pr_del (pi_key => pi_key,
                        pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
  --
  --
  PROCEDURE pr_apr (pi_key NUMBER, pi_cn IN NUMBER)IS
  BEGIN
		pkdv_00_curr.pr_apr (pi_key => pi_key,
                        pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr;
  --
  --
  PROCEDURE pr_val (pi_id IN VARCHAR2)IS
  BEGIN
		pkdv_00_curr.pr_val (pi_id => pi_id);
		pkdv_00.pr_commit;
	END pr_val;
  --  
  --
  FUNCTION fn_dsc (pi_id IN VARCHAR2) RETURN VARCHAR2 IS
  BEGIN
		RETURN pkdv_00_curr.fn_dsc (pi_id => pi_id);
	END fn_dsc;
  --    
  --
  FUNCTION fn_id (pi_key IN NUMBER) RETURN VARCHAR2 IS
  BEGIN
		RETURN pkdv_00_curr.fn_id (pi_key => pi_key);
	END fn_id;
  --
  --  
END pk$dv0011;
/