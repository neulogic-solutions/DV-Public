create or replace PACKAGE pk$dv0032 AUTHID DEFINER AS
 /*
  * ===========================================================<br/>
  *  PURPOSE : Broker/Exchange Map Definitions <br/>
  *  SCHEMA: SYMPLUS <br/>
  *  Created By       : Sola Adebayo <br/>
  *  Date Created     : 18-OCT-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  --
   PROCEDURE pr_prvs (pi_key       IN NUMBER DEFAULT NULL,
                     po_ins_yn    OUT VARCHAR2,
                     po_upd_yn    OUT VARCHAR2,
                     po_del_yn    OUT VARCHAR2,
                     po_apr_yn    OUT VARCHAR2,
                     po_aud_yn    OUT VARCHAR2);
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_10_xch_bkr_e%ROWTYPE);
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_10_xch_bkr%ROWTYPE;
  --
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_10_xch_bkr_e%ROWTYPE;
  --  
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  --
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  --
  PROCEDURE pr_val_map (pi_xch_k IN NUMBER, pi_bkr_k IN NUMBER);
 --
 --
END pk$dv0032;
/