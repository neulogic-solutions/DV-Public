create or replace PACKAGE BODY pk$dv0079 AS
  --
  /* Created By       : Sola Adebayo
  ** Date Created     : 21-Dec-2021
  ** Release Version  : 2.0
  **
  ** PURPOSE          : Derivatives Futures Trade Contracts 
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
  --
  /* Package Variables */
  ----
  PROCEDURE pr_prvs (pi_ctt_no  IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2)IS
	BEGIN
    pkdv_20_ctt.pr_prvs (pi_ctt_no => pi_ctt_no,
                     po_ins_yn => po_ins_yn,
                     po_upd_yn => po_upd_yn, 
                     po_del_yn => po_del_yn,
                     po_apr_yn => po_apr_yn,
                     po_aud_yn => po_aud_yn);
		pkdv_00.pr_commit;
    END pr_prvs;
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_20_ctt_e%ROWTYPE)IS
  BEGIN
		pkdv_20_ctt.pr_prc (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_prc;
  --
  --
  FUNCTION fn_dtl (pi_ctt_no IN NUMBER) RETURN dv_vt_20_ctt%ROWTYPE IS
  BEGIN
		RETURN pkdv_20_ctt.fn_dtl (pi_ctt_no => pi_ctt_no);
	END fn_dtl; 
  --  
  --
  FUNCTION fn_dtl_e (pi_ctt_no IN NUMBER) RETURN dv_vt_20_ctt_e%ROWTYPE IS
  BEGIN
		RETURN pkdv_20_ctt.fn_dtl_e (pi_ctt_no => pi_ctt_no);
	END fn_dtl_e; 
  --  
  --
  PROCEDURE pr_del (pi_ctt_no IN NUMBER, 
                    pi_cn     IN NUMBER)IS
  BEGIN
		pkdv_20_ctt.pr_del (pi_ctt_no => pi_ctt_no,
                            pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
  --
  --
  PROCEDURE pr_apr (pi_ctt_no IN NUMBER, 
                    pi_cn     IN NUMBER)IS
  BEGIN
		pkdv_20_ctt.pr_apr (pi_ctt_no => pi_ctt_no,
                            pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr;
  --
  --
  PROCEDURE pr_upd_fee (pi_key     IN NUMBER, 
                        pi_fee_amt IN NUMBER)IS
  BEGIN
		pkdv_80_fee.pr_upd_fee (pi_key     => pi_key,
                                pi_fee_amt => pi_fee_amt);
		pkdv_00.pr_commit;
	END pr_upd_fee;
  --
  --
END pk$dv0079;
/