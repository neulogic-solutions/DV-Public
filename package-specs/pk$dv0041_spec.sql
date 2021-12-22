create or replace PACKAGE pk$dv0041 AUTHID DEFINER AS
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
					 po_aud_yn  OUT VARCHAR2); 
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_15_ast_e%ROWTYPE);
	--
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_15_ast%ROWTYPE;
  -- 
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_15_ast_e%ROWTYPE;
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER);
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER);
  -- Processing Validations
  PROCEDURE pr_val (pi_key IN NUMBER);
  --
 FUNCTION fn_id (pi_key IN NUMBER) RETURN VARCHAR2;
  --
 FUNCTION fn_dsc (pi_key IN NUMBER) RETURN VARCHAR2;
  --
 FUNCTION fn_astc_key (pi_key IN NUMBER) RETURN NUMBER;
  --
 FUNCTION fn_xch_key (pi_key IN NUMBER) RETURN NUMBER;
  --
END pk$dv0041;
/