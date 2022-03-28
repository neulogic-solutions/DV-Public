create or replace PACKAGE BODY pk$dv0084 AS  
 /**
  * ===========================================================<br/>
  *  PURPOSE : NGX Margin Obligation Data Loader<br/>
  *  SCHEMA: SYMPLUS <br/>
  *  Created By       : Nneoma Nnorom <br/>
  *  Date Created     : 23-MAR-2022 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
 
  PROCEDURE pr_prvs (pi_key       IN NUMBER DEFAULT NULL,
                     po_ins_yn    OUT VARCHAR2,
                     po_upd_yn    OUT VARCHAR2,
                     po_del_yn    OUT VARCHAR2,
                     po_apr_yn    OUT VARCHAR2) IS
	BEGIN
		pkdv_20_ngx_obl_mgn_ld.pr_prvs (pi_key    => pi_key,        
		                                po_ins_yn => po_ins_yn,
		                                po_upd_yn => po_upd_yn,
		                                po_del_yn => po_del_yn,
		                                po_apr_yn => po_apr_yn);
		pkdv_00.pr_commit;
	END pr_prvs;
	
  --    
  
  PROCEDURE pr_init (pi_rec IN OUT dv_vt_20_ngx_obl_mgn_ld%ROWTYPE) IS 
	BEGIN
		pkdv_20_ngx_obl_mgn_ld.pr_init (pi_rec => pi_rec);
		pkdv_00.pr_commit;
	END pr_init;
		
  --   
  
  PROCEDURE pr_val_wk (pi_prc_key IN NUMBER) IS 
	BEGIN
		pkdv_20_ngx_obl_mgn_ld.pr_val_wk (pi_prc_key => pi_prc_key);
		pkdv_00.pr_commit;
	END pr_val_wk;
		
  --  
  
  PROCEDURE pr_prc_wk (pi_prc_key IN NUMBER) IS
	BEGIN
		pkdv_20_ngx_obl_mgn_ld.pr_prc_wk (pi_prc_key => pi_prc_key);
		pkdv_00.pr_commit;
	END pr_prc_wk;
		
  --
  
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER) IS
	BEGIN
		pkdv_20_ngx_obl_mgn_ld.pr_del (pi_key => pi_key,
									   pi_cn  => pi_cn);
		pkdv_00.pr_commit;
	END pr_del;
		
  --
  
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER) IS
	BEGIN
		pkdv_20_ngx_obl_mgn_ld.pr_apr (pi_key => pi_key,
									   pi_cn  => pi_cn);
		pkdv_00.pr_commit;
	END pr_apr;
		
  --  
  
END pk$dv0084; 
