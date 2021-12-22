create or replace PACKAGE BODY pk$dv0030 AS
  --
  /* Created By       : Sola Adebayo
  ** Date Created     : 05-OCT-2021
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
    /*TYPE r_id_dsc IS RECORD (
          act_k      dv_vt_00_gl_act.row_key%TYPE,
          boa_k      dv_vt_00_gl_act.boa_k%TYPE,  
          boa_id     dv_vt_00_gl_act.boa_id%TYPE,
          acct_id     dv_vt_00_gl_act.acct_id%TYPE,
          acct_dsc    dv_vt_00_gl_act.acct_dsc%TYPE
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
    pkdv_00_gl_act.pr_prvs (pi_key => pi_key,
                     po_ins_yn => po_ins_yn,
                     po_upd_yn => po_upd_yn, 
                     po_del_yn => po_del_yn,
                     po_apr_yn => po_apr_yn,
                     po_aud_yn => po_aud_yn);
		pkdv_00.pr_commit;
	END pr_prvs;
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_00_gl_act_e%ROWTYPE)IS
  BEGIN
		pkdv_00_gl_act.pr_prc (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_prc;
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_00_gl_act%ROWTYPE IS
  BEGIN
		RETURN pkdv_00_gl_act.fn_dtl (pi_key => pi_key);
	END fn_dtl;
  --
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_00_gl_act_e%ROWTYPE IS
  BEGIN
		RETURN pkdv_00_gl_act.fn_dtl_e (pi_key => pi_key);
	END fn_dtl_e;
  --
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER)IS
  BEGIN
		pkdv_00_gl_act.pr_apr (pi_key => pi_key,
                            pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr;
  --
  --
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER)IS
  BEGIN
		pkdv_00_gl_act.pr_del (pi_key => pi_key,
                            pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
  --
  --
  PROCEDURE pr_val (pi_key IN NUMBER)IS
  BEGIN
		pkdv_00_gl_act.pr_val (pi_key => pi_key);
		pkdv_00.pr_commit;
	END pr_val;
  --
  --
  PROCEDURE pr_val (pi_key IN NUMBER, pi_boa_k IN NUMBER DEFAULT NULL)IS
  BEGIN
		pkdv_00_gl_act.pr_val (pi_key => pi_key,
                           pi_boa_k => pi_boa_k );
		pkdv_00.pr_commit;
	END pr_val;
  --
  --
  PROCEDURE pr_val_trd (pi_key IN NUMBER, pi_boa_k IN NUMBER DEFAULT NULL) IS
  BEGIN
		pkdv_00_gl_act.pr_val_trd (pi_key => pi_key,
                           pi_boa_k => pi_boa_k );
		pkdv_00.pr_commit;
	END pr_val_trd;
  --
  --
  PROCEDURE pr_val_mgn (pi_key IN NUMBER, pi_boa_k IN NUMBER DEFAULT NULL)IS
  BEGIN
		pkdv_00_gl_act.pr_val_mgn (pi_key => pi_key,
                           pi_boa_k => pi_boa_k );
		pkdv_00.pr_commit;
	END pr_val_mgn;
  --
  --
  PROCEDURE pr_val_psg (pi_key IN NUMBER, pi_boa_k IN NUMBER DEFAULT NULL)IS
  BEGIN
		pkdv_00_gl_act.pr_val_psg (pi_key => pi_key,
                           pi_boa_k => pi_boa_k );
		pkdv_00.pr_commit;
	END pr_val_psg;
  --
  --
  FUNCTION fn_id (pi_key IN NUMBER) RETURN VARCHAR2 IS
  BEGIN
		RETURN pkdv_00_gl_act.fn_id (pi_key => pi_key);
	END fn_id;
  --
  --
  FUNCTION fn_dsc (pi_key IN NUMBER) RETURN VARCHAR2 IS
  BEGIN
		RETURN pkdv_00_gl_act.fn_dsc (pi_key => pi_key);
	END fn_dsc;
  --
  --
END pk$dv0030;
