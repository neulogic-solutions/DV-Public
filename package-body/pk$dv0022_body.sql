create or replace PACKAGE BODY pk$dv0022 AS
  --
  /* Created By       : Sola Adebayo        
  ** Date Created     : 06-OCT-2021
  ** Release Version  : 2.0
  **
  ** PURPOSE: Accounts Management
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
   /* TYPE r_id_dsc IS RECORD (
          act_k      dv_vt_00_dd_act.row_key%TYPE,
          boa_k      dv_vt_00_dd_act.boa_k%TYPE,  
          boa_id     dv_vt_00_dd_act.boa_id%TYPE,
          acct_id     dv_vt_00_dd_act.acct_id%TYPE,
          acct_dsc    dv_vt_00_dd_act.acct_dsc%TYPE
        );*/
  --
  --
  PROCEDURE pr_prvs (pi_key       IN NUMBER DEFAULT NULL,
                     po_ins_yn    OUT VARCHAR2,
                     po_upd_yn    OUT VARCHAR2,
                     po_del_yn    OUT VARCHAR2,
                     po_apr_yn    OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2)IS
	BEGIN
    PKDV_00_DD_ACT.pr_prvs (pi_key => pi_key,
                     po_ins_yn => po_ins_yn,
                     po_upd_yn => po_upd_yn, 
                     po_del_yn => po_del_yn,
                     po_apr_yn => po_apr_yn,
                     po_aud_yn => po_aud_yn);
		pkdv_00.pr_commit;
	END pr_prvs;
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_00_dd_act_e%ROWTYPE)IS
  BEGIN
		PKDV_00_DD_ACT.pr_prc (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_prc;
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_00_dd_act%ROWTYPE IS
  BEGIN
		RETURN PKDV_00_DD_ACT.fn_dtl (pi_key => pi_key);
	END fn_dtl;
  --
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_00_dd_act_e%ROWTYPE IS
  BEGIN
		RETURN PKDV_00_DD_ACT.fn_dtl_e (pi_key => pi_key);
	END fn_dtl_e; 
  --  
  --
  FUNCTION fn_avl_bal (pi_key IN NUMBER) RETURN NUMBER IS
  BEGIN
		RETURN PKDV_00_DD_ACT.fn_avl_bal (pi_key => pi_key);
	END fn_avl_bal; 
  --
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER)IS
  BEGIN
		PKDV_00_DD_ACT.pr_apr (pi_key => pi_key,
                            pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr;
  --
  --
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER)IS
  BEGIN
		PKDV_00_DD_ACT.pr_del (pi_key => pi_key,
                            pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
  --
  --
  PROCEDURE pr_val_trd (pi_key IN NUMBER, pi_cus_k IN NUMBER DEFAULT NULL, pi_boa_k IN NUMBER DEFAULT NULL)IS
  BEGIN
		PKDV_00_DD_ACT.pr_val_trd (pi_key => pi_key,
                              pi_cus_k => pi_cus_k,
                            pi_boa_k => pi_boa_k);
		pkdv_00.pr_commit;
	END pr_val_trd; 
  --
  --
  PROCEDURE pr_val (pi_key IN NUMBER, pi_cus_k IN NUMBER DEFAULT NULL, pi_boa_k IN NUMBER DEFAULT NULL)IS
  BEGIN
		PKDV_00_DD_ACT.pr_val (pi_key => pi_key,
                          pi_cus_k => pi_cus_k,
                          pi_boa_k => pi_boa_k);
		pkdv_00.pr_commit;
	END pr_val;
 --
 --
 PROCEDURE pr_val_mgn (pi_key IN NUMBER, pi_cus_k IN NUMBER DEFAULT NULL, pi_boa_k IN NUMBER DEFAULT NULL)IS
  BEGIN
		PKDV_00_DD_ACT.pr_val_mgn (pi_key => pi_key,
                          pi_cus_k => pi_cus_k,
                          pi_boa_k => pi_boa_k);
		pkdv_00.pr_commit;
	END pr_val_mgn;
  --
  --
  PROCEDURE pr_val_avl_bal(pi_key IN NUMBER, pi_amt IN NUMBER, pi_amt_dsc IN VARCHAR2 DEFAULT 'Transaction Amount')IS
  BEGIN
		PKDV_00_DD_ACT.pr_val_avl_bal (pi_key => pi_key,
                          pi_amt => pi_amt,
                          pi_amt_dsc => pi_amt_dsc);
		pkdv_00.pr_commit;
	END pr_val_avl_bal;
  --
  --
END pk$dv0022;
/
