create or replace PACKAGE BODY pk$dv0023 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : Derivatives Asset Class Setup  <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 04-OCT-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  PROCEDURE pr_prvs (pi_key     IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2) IS
	BEGIN 
    pkdv_00_astc.pr_prvs (pi_key     => pi_key,
                          po_ins_yn  => po_ins_yn,
                          po_upd_yn  => po_upd_yn,
						  po_del_yn  => po_del_yn,
						  po_apr_yn  => po_apr_yn);
	pkdv_00.pr_commit;
	--
	END pr_prvs; 
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_00_astc_e%ROWTYPE) IS 
    BEGIN 
		pkdv_00_astc.pr_prc (pi_rec => pi_rec); 
		pkdv_00.pr_commit; 
	END pr_prc;
	--
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_00_astc%ROWTYPE IS 
  --
    BEGIN 
		RETURN pkdv_00_astc.fn_dtl (pi_key => pi_key); 
    END fn_dtl;
  -- 
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_00_astc_e%ROWTYPE IS 
  --
    BEGIN 
		RETURN pkdv_00_astc.fn_dtl_e (pi_key => pi_key); 
    END fn_dtl_e;
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER) IS 
    BEGIN 
		pkdv_00_astc.pr_del (pi_key => pi_key,
							pi_cn  => pi_cn); 
		pkdv_00.pr_commit; 
	END pr_del;
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER) IS 
    BEGIN 
		pkdv_00_astc.pr_apr (pi_key => pi_key,
							pi_cn  => pi_cn); 
		pkdv_00.pr_commit; 
	END pr_apr;
  --   
END pk$dv0023;
/