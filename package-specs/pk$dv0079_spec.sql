create or replace PACKAGE pk$dv0079 AUTHID DEFINER AS
 /*
  * ===========================================================<br/>
  *  PURPOSE          : Derivatives Futures Trade Contracts <br/>
  *  Created By       : Sola Adebayo <br/>
  *  Date Created     : 21-Dec-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  ----
  PROCEDURE pr_prvs (pi_ctt_no  IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2);
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_20_ctt_e%ROWTYPE);
  --
  --
  FUNCTION fn_dtl (pi_ctt_no IN NUMBER) RETURN dv_vt_20_ctt%ROWTYPE;
  --  
  --
  FUNCTION fn_dtl_e (pi_ctt_no IN NUMBER) RETURN dv_vt_20_ctt_e%ROWTYPE;
  --  
  --
  PROCEDURE pr_del (pi_ctt_no IN NUMBER, 
                    pi_cn     IN NUMBER);
  --
  --
  PROCEDURE pr_apr (pi_ctt_no IN NUMBER, 
                    pi_cn     IN NUMBER);
  --
  --
  PROCEDURE pr_upd_fee (pi_key     IN NUMBER, 
                        pi_fee_amt IN NUMBER);
  --
  --
END pk$dv0079;
/