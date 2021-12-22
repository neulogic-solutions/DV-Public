create or replace PACKAGE BODY pk$dv0077 AS
  --
  /* Created By       : Sola Adebayo
  ** Date Created     : 12-NOV-2021
  ** Release Version  : 2.0
  **
  ** PURPOSE          : Derivatives Futures Trade Orders
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

  PROCEDURE pr_prvs (pi_ord_no  IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2)IS
	BEGIN
    pkdv_20_ord.pr_prvs (pi_ord_no => pi_ord_no,
                     po_ins_yn => po_ins_yn,
                     po_upd_yn => po_upd_yn, 
                     po_del_yn => po_del_yn,
                     po_apr_yn => po_apr_yn,
                     po_aud_yn => po_aud_yn);
		pkdv_00.pr_commit;
	END pr_prvs;
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_20_ord_e%ROWTYPE)IS
  BEGIN
		pkdv_20_ord.pr_prc (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_prc;
  --
  --
  FUNCTION fn_dtl (pi_ord_no IN NUMBER) RETURN dv_vt_20_ord%ROWTYPE IS
  BEGIN
		RETURN pkdv_20_ord.fn_dtl (pi_ord_no => pi_ord_no);
	END fn_dtl;
  --  
  --
  FUNCTION fn_dtl_e (pi_ord_no IN NUMBER) RETURN dv_vt_20_ord_e%ROWTYPE IS
  BEGIN
		RETURN pkdv_20_ord.fn_dtl_e (pi_ord_no => pi_ord_no);
	END fn_dtl_e; 
  --  
  --
  PROCEDURE pr_del (pi_ord_no IN NUMBER, 
                    pi_cn     IN NUMBER)IS
  BEGIN
		pkdv_20_ord.pr_del (pi_ord_no => pi_ord_no,
                            pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
  --
  --
  PROCEDURE pr_apr (pi_ord_no IN NUMBER, 
                    pi_cn  IN NUMBER)IS
  BEGIN
		pkdv_20_ord.pr_apr (pi_ord_no => pi_ord_no,
                            pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr;
  --
  --
END pk$dv0077;
/