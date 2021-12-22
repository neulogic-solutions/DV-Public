create or replace PACKAGE BODY pk$dv0065 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE          : Derivative: Operations - Cash Inflow <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 29-OCT-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  PROCEDURE pr_prvs (pi_key  IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2) IS
  BEGIN
  	  pkdv_80_cshin.pr_prvs(pi_key    => pi_key,
  	                             po_ins_yn => po_ins_yn,
  	  					         po_upd_yn => po_upd_yn,
  	  					         po_del_yn => po_del_yn,
  	  					         po_apr_yn => po_apr_yn,
  	  					         po_aud_yn => po_aud_yn);	
  	  pkdv_00.pr_commit;
  END pr_prvs;
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_80_cshin_e%ROWTYPE) IS
  --
  BEGIN 
  --
	pkdv_80_cshin.pr_prc(pi_rec => pi_rec);	
  	pkdv_00.pr_commit;
  --
  END pr_prc;	
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_80_cshin%ROWTYPE IS 
  --
    BEGIN 
		RETURN pkdv_80_cshin.fn_dtl (pi_key => pi_key); 
    END fn_dtl;
  --
  
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_80_cshin_e%ROWTYPE IS 
  --
    BEGIN 
		RETURN pkdv_80_cshin.fn_dtl_e (pi_key => pi_key); 
    END fn_dtl_e;
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER) IS
  --
  BEGIN 
  --
	pkdv_80_cshin.pr_del(pi_key => pi_key,
	                     pi_cn  => pi_cn);	
  	pkdv_00.pr_commit;
  --
  END pr_del;	
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER) IS
  --
  BEGIN 
  --
	pkdv_80_cshin.pr_apr(pi_key => pi_key,
	                     pi_cn  => pi_cn);	
  	pkdv_00.pr_commit;
  --
  END pr_apr;	
  --
END pk$dv0065;
/