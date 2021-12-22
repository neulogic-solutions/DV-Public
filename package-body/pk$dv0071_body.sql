create or replace PACKAGE BODY pk$dv0071 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : Security Setup <br/
  *  SCHEMA: SYMPLUS <br/>
  *  Created By       : Basit Aderinwale <br/>
  *  Date Created     : 10-NOV-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  PROCEDURE pr_prvs (pi_key       IN NUMBER DEFAULT NULL,
                     po_ins_yn    OUT VARCHAR2,
                     po_upd_yn    OUT VARCHAR2,
                     po_del_yn    OUT VARCHAR2,
                     po_apr_yn    OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2) IS
	BEGIN
		pkdv_20_sec.pr_prvs (pi_key    => pi_key,
							 po_ins_yn => po_ins_yn,
							 po_upd_yn => po_upd_yn,
							 po_del_yn => po_del_yn,
							 po_apr_yn => po_apr_yn,
							 po_aud_yn => po_aud_yn);
		pkdv_00.pr_commit;
	END pr_prvs;
  --  
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_20_sec_e%ROWTYPE) IS
	BEGIN
		pkdv_20_sec.pr_prc (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_prc;
  --  
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_20_sec%ROWTYPE IS
	BEGIN
		RETURN pkdv_20_sec.fn_dtl(pi_key => pi_key);
	END fn_dtl;
  --  
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_20_sec_e%ROWTYPE IS
	BEGIN
		RETURN pkdv_20_sec.fn_dtl_e(pi_key => pi_key);
	END fn_dtl_e;
  --    
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER) IS
	BEGIN
		pkdv_20_sec.pr_apr(pi_key => pi_key, pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr; 
  --  
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER) IS
	BEGIN
		pkdv_20_sec.pr_del(pi_key => pi_key, pi_cn => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
  --  
  PROCEDURE pr_val (pi_key IN NUMBER) IS
	BEGIN
		pkdv_20_sec.pr_val(pi_key => pi_key);
		pkdv_00.pr_commit;
	END pr_val;
  --
 FUNCTION fn_id (pi_key IN NUMBER) RETURN VARCHAR2 IS
	BEGIN
		RETURN pkdv_20_sec.fn_id(pi_key => pi_key);
	END fn_id;
 --  
 FUNCTION fn_dsc (pi_key IN NUMBER) RETURN VARCHAR2 IS
	BEGIN
		RETURN pkdv_20_sec.fn_dsc(pi_key => pi_key);
	END fn_dsc;
 -- 
 FUNCTION fn_ast_key (pi_key IN NUMBER) RETURN NUMBER IS
	BEGIN
		RETURN pkdv_20_sec.fn_ast_key(pi_key => pi_key);
	END fn_ast_key;
 -- 
 FUNCTION fn_xch_key (pi_key IN NUMBER) RETURN NUMBER IS
	BEGIN
		RETURN pkdv_20_sec.fn_xch_key(pi_key => pi_key);
	END fn_xch_key;
 
 --
END pk$dv0071;
/