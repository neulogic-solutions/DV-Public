create or replace PACKAGE BODY pk$dv0081 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE 		  : Derivatives Futures Contract Closure <br/>
  *  SCHEMA			  : SYMPLUS <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 28-FEB-2022 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  PROCEDURE pr_prvs (pi_key     IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2) IS
  BEGIN
		pkdv_20_cls_ctt.pr_prvs(pi_key     => pi_key,
		                         po_ins_yn  => po_ins_yn,
		                         po_upd_yn  => po_upd_yn,
		                         po_del_yn  => po_del_yn,
		                         po_apr_yn  => po_apr_yn,
		                         po_aud_yn  => po_aud_yn);
		pkdv_00.pr_commit; 
  END pr_prvs;
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_20_cls_e%ROWTYPE) IS
  BEGIN
		pkdv_20_cls_ctt.pr_prc(pi_rec => pi_rec);
		pkdv_00.pr_commit; 
  END pr_prc;
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_20_cls%ROWTYPE IS
  BEGIN
		RETURN pkdv_20_cls_ctt.fn_dtl(pi_key => pi_key);
  END fn_dtl;
  --  
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_20_cls_e%ROWTYPE IS
  BEGIN
		RETURN pkdv_20_cls_ctt.fn_dtl_e(pi_key => pi_key);
  END fn_dtl_e;
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER) IS
  BEGIN
		pkdv_20_cls_ctt.pr_del(pi_key => pi_key,
						       pi_cn  => pi_cn);
		pkdv_00.pr_commit; 
  END pr_del;
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER) IS
  BEGIN
		pkdv_20_cls_ctt.pr_apr(pi_key => pi_key,
						       pi_cn  => pi_cn);
		pkdv_00.pr_commit; 
  END pr_apr;
  --
  PROCEDURE pr_upd_ctt_dtl (pi_key    IN NUMBER, 
                            pi_cls_yn IN VARCHAR2 DEFAULT '0') IS
  BEGIN
		pkdv_20_cls_ctt.pr_upd_ctt_dtl(pi_key => pi_key,
						               pi_cls_yn  => pi_cls_yn);
		pkdv_00.pr_commit; 
  END pr_upd_ctt_dtl;
  --
END pk$dv0081;
/