create or replace PACKAGE pk$dv0027 AUTHID DEFINER AS
 /*
  * ===========================================================<br/>
  *  PURPOSE : Brokers Definitions <br/>
  *  SCHEMA: SYMPLUS <br/>
  *  Created By       : Sola Adebayo <br/>
  *  Date Created     : 13-OCT-2021 <br/>
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
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_10_bkr_e%ROWTYPE);
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_10_bkr%ROWTYPE;
  --
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_10_bkr_e%ROWTYPE;
  --  
  --
  FUNCTION fn_bkr_id (pi_key IN NUMBER) RETURN VARCHAR2;
  --   
  --
  FUNCTION fn_bkr_nme (pi_key IN NUMBER) RETURN VARCHAR2;
  --  
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  --
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  --
  PROCEDURE pr_val (pi_key IN NUMBER);
  --
  --
  PROCEDURE pr_val_bkr (pi_key IN NUMBER);
  --
  --
  PROCEDURE pr_val_clr_mbr (pi_key IN NUMBER);
  --
  --
END pk$dv0027;
/