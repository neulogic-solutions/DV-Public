create or replace PACKAGE pk$dv0063 AUTHID DEFINER AS  
 /**
  * ===========================================================<br/>
  *  PURPOSE : Price Data Loader<br/>
  *  SCHEMA: SYMPLUS <br/>
  *  Created By       : Nneoma Nnorom <br/>
  *  Date Created     : 31-MAR-2022 <br/>
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
  
  PROCEDURE pr_init (pi_rec IN OUT dv_vt_20_mda_ld_prc%ROWTYPE);
  --  
  
  PROCEDURE pr_val_wk (pi_prc_key IN NUMBER);
  --
  
  PROCEDURE pr_prc_wk (pi_prc_key IN NUMBER);
  --
  
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER);
  --  
  
END pk$dv0063; 
/


pkdv_20_mda_ld_prc