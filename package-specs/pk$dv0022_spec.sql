create or replace PACKAGE pk$dv0022 AUTHID DEFINER AS
/*
  * ===========================================================<br/>
  *  PURPOSE : Accounts Management <br/>
  *  SCHEMA: SYMPLUS <br/>
  *  Created By       : Sola Adebayo <br/>
  *  Date Created     : 06-OCT-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  PROCEDURE pr_prvs (pi_key       IN NUMBER DEFAULT NULL,
                     po_ins_yn    OUT VARCHAR2,
                     po_upd_yn    OUT VARCHAR2,
                     po_del_yn    OUT VARCHAR2,
                     po_apr_yn    OUT VARCHAR2,
                     po_aud_yn    OUT VARCHAR2);
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_00_dd_act_e%ROWTYPE);
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_00_dd_act%ROWTYPE;
  --
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_00_dd_act_e%ROWTYPE;
  --  
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  --
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  -- Validate
  PROCEDURE pr_val (pi_key IN NUMBER, pi_cus_k IN NUMBER DEFAULT NULL, pi_boa_k IN NUMBER DEFAULT NULL);
  PROCEDURE pr_val_trd (pi_key IN NUMBER, pi_cus_k IN NUMBER DEFAULT NULL, pi_boa_k IN NUMBER DEFAULT NULL);
  PROCEDURE pr_val_mgn (pi_key IN NUMBER, pi_cus_k IN NUMBER DEFAULT NULL, pi_boa_k IN NUMBER DEFAULT NULL);
  --
  FUNCTION fn_avl_bal (pi_key IN NUMBER) RETURN NUMBER;
  PROCEDURE pr_val_avl_bal (pi_key IN NUMBER, pi_amt IN NUMBER, pi_amt_dsc IN VARCHAR2 DEFAULT 'Transaction Amount');
  --
  --
END pk$dv0022;
/
