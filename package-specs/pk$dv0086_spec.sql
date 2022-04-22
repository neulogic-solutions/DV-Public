create or replace PACKAGE pk$dv0086 AUTHID DEFINER AS
 /*
  * ===========================================================<br/>
  *  PURPOSE          : Derivatives Futures Back Office Contracts <br/>
  *  Created By       : Ifada Joyce <br/>
  *  Date Created     : 21-Dec-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  ----
  PROCEDURE pr_prvs (pi_key     IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2);
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_20_ctt1_e%ROWTYPE);
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_20_ctt1%ROWTYPE;
  --  
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_20_ctt1_e%ROWTYPE;
  --  
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER);
  --
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER);
  --
  --
  FUNCTION fn_im_mkp_pct (pi_ptf_key NUMBER, 
                          pi_ls_dm VARCHAR2) RETURN NUMBER;
  --
END pk$dv0086;
/