create or replace PACKAGE pk$dv0013 AUTHID DEFINER AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : DV Setup - Fees <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 30-SEP-2021 <br/>
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
                     po_aud_yn  OUT VARCHAR2);
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_00_fee_e%ROWTYPE);
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_00_fee%ROWTYPE;
  -- 
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_00_fee_e%ROWTYPE;
  --
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  PROCEDURE pr_val (pi_key NUMBER);
  --
  FUNCTION fn_dsc  (pi_key IN NUMBER) RETURN VARCHAR2;
  --   
END pk$dv0013;
/