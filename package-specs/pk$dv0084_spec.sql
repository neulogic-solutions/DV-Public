create or replace PACKAGE PK$DV0084 AUTHID DEFINER AS  
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
                     po_apr_yn    OUT VARCHAR2);
  --    
  PROCEDURE pr_init (pi_rec IN OUT dv_vt_20_ngx_obl_mgn_ld%ROWTYPE);
  --   
  PROCEDURE pr_val_wk (pi_prc_key IN NUMBER);
  --  
  PROCEDURE pr_prc_wk (pi_prc_key IN NUMBER);
  --
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER);
  --  
  
END PK$DV0084; 
