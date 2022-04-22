create or replace PACKAGE BODY pk$dv0086 AS
  --
  /* Created By       : Ifada Joyce
  ** Date Created     : 21-Dec-2021
  ** Release Version  : 2.0
  **
  ** PURPOSE          : Derivatives Futures Back office Contracts 
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
  PROCEDURE pr_prvs (pi_key     IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2)IS
	BEGIN
    pkdv_20_ctt1.pr_prvs(pi_key    => pi_key,
                         po_ins_yn => po_ins_yn,
                         po_upd_yn => po_upd_yn, 
                         po_del_yn => po_del_yn,
                         po_apr_yn => po_apr_yn,
                         po_aud_yn => po_aud_yn);
		pkdv_00.pr_commit;
    END pr_prvs;
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_20_ctt1_e%ROWTYPE)IS
  BEGIN
		pkdv_20_ctt1.pr_prc (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_prc;
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_20_ctt1%ROWTYPE IS
  BEGIN
		RETURN pkdv_20_ctt1.fn_dtl (pi_key => pi_key);
	END fn_dtl; 
  --  
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_20_ctt1_e%ROWTYPE IS
  BEGIN
		RETURN pkdv_20_ctt1.fn_dtl_e (pi_key => pi_key);
	END fn_dtl_e; 
  --  
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER)IS
  BEGIN
		pkdv_20_ctt1.pr_del (pi_key => pi_key,
                         pi_cn  => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
  --
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER)IS
  BEGIN
		pkdv_20_ctt1.pr_apr (pi_key => pi_key,
                         pi_cn  => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr;
  --
  --
  FUNCTION fn_im_mkp_pct (pi_ptf_key NUMBER, 
                          pi_ls_dm VARCHAR2) RETURN NUMBER IS
  BEGIN
		RETURN pkdv_20_ctt1.fn_im_mkp_pct (pi_ptf_key => pi_ptf_key, 
                                       pi_ls_dm   => pi_ls_dm);
	END fn_im_mkp_pct; 
  --
END pk$dv0086;
/