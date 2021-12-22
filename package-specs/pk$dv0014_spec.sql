create or replace PACKAGE pk$dv0014 AUTHID DEFINER AS
 /**
  * ===========================================================<br/>
  *  PURPOSE          : DV Setup - Tax <br/>
  *  Created By       : Sola Adebayo <br/>
  *  Date Created     : 30-SEPT-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  --
  PROCEDURE pr_prvs (pi_key  IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2);
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_00_tax_e%ROWTYPE);
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_00_tax%ROWTYPE;
  --  
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_00_tax_e%ROWTYPE;
  --  
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER);
  --
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                   pi_cn   IN NUMBER);
  --
  -- Processing Validations
  PROCEDURE pr_val (pi_key IN NUMBER);
  FUNCTION fn_tax_dsc (pi_key IN NUMBER) RETURN VARCHAR2;
  FUNCTION fn_crnt_tax_rt (pi_key IN NUMBER) RETURN NUMBER ; 
  --

END pk$dv0014;
/
