create or replace PACKAGE BODY pk$dv0025 AS
  --
  /* Created By       : Sola Adebayo
  ** Date Created     : 04-OCT-2021
  ** Release Version  : 2.0
  **
  ** PURPOSE          : Derivatives Exchange Setup
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
  ** Copyright:  ProGenics Corp. Ltd, 2021
  **
  */
  --
  /* Package Variables */
  --
  PROCEDURE pr_prvs (pi_key       IN NUMBER DEFAULT NULL,
                     po_ins_yn    OUT VARCHAR2,
                     po_upd_yn    OUT VARCHAR2,
                     po_del_yn    OUT VARCHAR2,
                     po_apr_yn    OUT VARCHAR2)IS
	BEGIN
    pkdv_10_xch.pr_prvs (pi_key => pi_key,
                     po_ins_yn => po_ins_yn,
                     po_upd_yn => po_upd_yn, 
                     po_del_yn => po_del_yn,
                     po_apr_yn => po_apr_yn);
		pkdv_00.pr_commit;
	END pr_prvs;
  --    
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_10_xch_e%ROWTYPE)IS
  BEGIN
		pkdv_10_xch.pr_prc (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_prc;
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_10_xch%ROWTYPE IS
  BEGIN
		RETURN pkdv_10_xch.fn_dtl (pi_key => pi_key);
	END fn_dtl;
  --  
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_10_xch_e%ROWTYPE IS
  BEGIN
		RETURN pkdv_10_xch.fn_dtl_e (pi_key => pi_key);
	END fn_dtl_e;
  --  
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER)IS
  BEGIN
		pkdv_10_xch.pr_del (pi_key => pi_key,
                        pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
  --
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER)IS
  BEGIN
		pkdv_10_xch.pr_apr (pi_key => pi_key,
                        pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr;
  --
  --
END pk$dv0025; 
/