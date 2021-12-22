create or replace PACKAGE BODY pk$dv0041 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : DV Assets Definitions  <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 13-OCT-2021 <br/>
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
    pkdv_15_ast.pr_prvs (pi_key     => pi_key,
                         po_ins_yn  => po_ins_yn,
                         po_upd_yn  => po_upd_yn,
						 po_del_yn  => po_del_yn,
						 po_apr_yn  => po_apr_yn,
						 po_aud_yn  => po_aud_yn);
	pkdv_00.pr_commit;
	--
	END pr_prvs; 
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_15_ast_e%ROWTYPE) IS 
    BEGIN 
		pkdv_15_ast.pr_prc (pi_rec => pi_rec); 
		pkdv_00.pr_commit; 
	END pr_prc;
	--
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_15_ast%ROWTYPE IS 
  --
    BEGIN 
		RETURN pkdv_15_ast.fn_dtl (pi_key => pi_key); 
    END fn_dtl;
  -- 
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_15_ast_e%ROWTYPE IS 
  --
    BEGIN 
		RETURN pkdv_15_ast.fn_dtl_e (pi_key => pi_key); 
    END fn_dtl_e;
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER) IS 
    BEGIN 
		pkdv_15_ast.pr_apr (pi_key => pi_key,
							pi_cn  => pi_cn); 
		pkdv_00.pr_commit; 
	END pr_apr;
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER) IS 
    BEGIN 
		pkdv_15_ast.pr_del (pi_key => pi_key,
							pi_cn  => pi_cn); 
		pkdv_00.pr_commit; 
	END pr_del;
  -- Processing Validations
  PROCEDURE pr_val (pi_key IN NUMBER) IS 
    BEGIN 
		pkdv_15_ast.pr_val (pi_key => pi_key); 
		pkdv_00.pr_commit; 
	END pr_val;
  --
 FUNCTION fn_id (pi_key IN NUMBER) RETURN VARCHAR2 IS 
  --
    BEGIN 
		RETURN pkdv_15_ast.fn_id (pi_key => pi_key); 
    END fn_id;
  --
 FUNCTION fn_dsc (pi_key IN NUMBER) RETURN VARCHAR2 IS 
  --
    BEGIN 
		RETURN pkdv_15_ast.fn_dsc (pi_key => pi_key); 
    END fn_dsc;
  --
 FUNCTION fn_astc_key (pi_key IN NUMBER) RETURN NUMBER IS 
  --
    BEGIN 
		RETURN pkdv_15_ast.fn_astc_key (pi_key => pi_key); 
    END fn_astc_key;
  --
 FUNCTION fn_xch_key (pi_key IN NUMBER) RETURN NUMBER IS 
  --
    BEGIN 
		RETURN pkdv_15_ast.fn_xch_key (pi_key => pi_key); 
    END fn_xch_key;
  --
END pk$dv0041;
/
