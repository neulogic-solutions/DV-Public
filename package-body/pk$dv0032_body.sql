create or replace PACKAGE BODY pk$dv0032 AS
  --
  /* Created By       : Sola Adebayo
  ** Date Created     : 18-OCT-2021
  ** Release Version  : 2.0
  **
  ** PURPOSE: Broker/Exchange Processing
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
  ** Copyright:  Neulogic Solutions Ltd, 2021
  **
  */
  /* Package Variables */
  --
  --
  PROCEDURE pr_prvs (pi_key       IN NUMBER DEFAULT NULL,
                     po_ins_yn    OUT VARCHAR2,
                     po_upd_yn    OUT VARCHAR2,
                     po_del_yn    OUT VARCHAR2,
                     po_apr_yn    OUT VARCHAR2,
                     po_aud_yn    OUT VARCHAR2)IS
	BEGIN
    pkdv_10_xch_bkr.pr_prvs (pi_key => pi_key,
                     po_ins_yn => po_ins_yn,
                     po_upd_yn => po_upd_yn, 
                     po_del_yn => po_del_yn,
                     po_apr_yn => po_apr_yn,
                     po_aud_yn => po_aud_yn);
		pkdv_00.pr_commit;
	END pr_prvs;
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_10_xch_bkr_e%ROWTYPE)IS
  BEGIN
		pkdv_10_xch_bkr.pr_prc (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_prc;
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_10_xch_bkr%ROWTYPE IS
  BEGIN
		RETURN pkdv_10_xch_bkr.fn_dtl (pi_key => pi_key);
	END fn_dtl;
  --
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_10_xch_bkr_e%ROWTYPE IS
  BEGIN
		RETURN pkdv_10_xch_bkr.fn_dtl_e (pi_key => pi_key);
	END fn_dtl_e; 
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER)IS
  BEGIN
		pkdv_10_xch_bkr.pr_apr (pi_key => pi_key,
                            pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr;
  --
  --
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER)IS
  BEGIN
		pkdv_10_xch_bkr.pr_del (pi_key => pi_key,
                            pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
  --
  --
  PROCEDURE pr_val_map (pi_xch_k IN NUMBER, pi_bkr_k IN NUMBER)IS
  BEGIN
		pkdv_10_xch_bkr.pr_val_map (pi_xch_k => pi_xch_k,
                                pi_bkr_k => pi_bkr_k);
		pkdv_00.pr_commit;
	END pr_val_map;
 --
 --
END pk$dv0032;
/