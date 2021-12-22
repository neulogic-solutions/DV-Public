create or replace PACKAGE BODY pkdv_00_tax AS
  --
  /* Created By       : Sola Adebayo
  ** Date Created     : 30-SEPT-2021
  ** Release Version  : 2.0
  **
  ** PURPOSE          : DV Setup - Tax
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
  --
  PROCEDURE pr_prvs (pi_key  IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2)IS
	BEGIN
    pkdv_00_tax.pr_prvs (pi_key => pi_key,
                     po_ins_yn => po_ins_yn,
                     po_upd_yn => po_upd_yn, 
                     po_del_yn => po_del_yn,
                     po_apr_yn => po_apr_yn,
                     po_aud_yn => po_aud_yn);
		pkdv_00.pr_commit;
	END pr_prvs;
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_00_tax_e%ROWTYPE)IS
  BEGIN
		pkdv_00_tax.pr_prc (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_prc;
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_00_tax%ROWTYPE IS
  BEGIN
		RETURN pkdv_00_tax.fn_dtl (pi_key => pi_key);
	END fn_dtl;
  --  
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_00_tax_e%ROWTYPE IS
  BEGIN
		RETURN pkdv_00_tax.fn_dtl_e (pi_key => pi_key);
	END fn_dtl_e;
  --  
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER)IS
  BEGIN
		pkdv_00_tax.pr_del (pi_key => pi_key,
                        pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                   pi_cn   IN NUMBER)IS
  BEGIN
		pkdv_00_tax.pr_apr (pi_key => pi_key,
                        pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr;
  --
  -- Processing Validations
  PROCEDURE pr_val (pi_key IN NUMBER)IS
  BEGIN
		pkdv_00_tax.pr_val (pi_key => pi_key);
		pkdv_00.pr_commit;
	END pr_val;
  --
  --
  FUNCTION fn_tax_dsc (pi_key IN NUMBER) RETURN VARCHAR2 IS
  BEGIN
		RETURN pkdv_00_tax.fn_tax_dsc (pi_key => pi_key);
	END fn_tax_dsc;
  --
  --
  FUNCTION fn_crnt_tax_rt (pi_key IN NUMBER) RETURN NUMBER IS
  BEGIN
		RETURN pkdv_00_tax.fn_crnt_tax_rt (pi_key => pi_key);
	END fn_crnt_tax_rt;
  --
  --

END pk$dv0014;
/
