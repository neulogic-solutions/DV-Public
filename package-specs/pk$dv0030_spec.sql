create or replace PACKAGE pk$dv0030 AUTHID DEFINER AS
 /*
  * ===========================================================<br/>
  *  PURPOSE : Accounts Management <br/>
  *  SCHEMA: SYMPLUS <br/>
  *  Created By       : Sola Adebayo <br/>
  *  Date Created     : 05-OCT-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
    /*TYPE r_id_dsc IS RECORD (
          act_k      dv_vt_00_gl_act.row_key%TYPE,
          boa_k      dv_vt_00_gl_act.boa_k%TYPE,  
          boa_id     dv_vt_00_gl_act.boa_id%TYPE,
          acct_id     dv_vt_00_gl_act.acct_id%TYPE,
          acct_dsc    dv_vt_00_gl_act.acct_dsc%TYPE
        );*/
  --
  --
  PROCEDURE pr_prvs (pi_key       IN NUMBER DEFAULT NULL,
                     po_ins_yn    OUT VARCHAR2,
                     po_upd_yn    OUT VARCHAR2,
                     po_del_yn    OUT VARCHAR2,
                     po_apr_yn    OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2);
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_00_gl_act_e%ROWTYPE);
  --
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_00_gl_act%ROWTYPE;
  --
  --
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_00_gl_act_e%ROWTYPE;
  -- 
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  --
  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  --
  PROCEDURE pr_val (pi_key IN NUMBER, pi_boa_k IN NUMBER DEFAULT NULL);
  PROCEDURE pr_val_trd (pi_key IN NUMBER, pi_boa_k IN NUMBER DEFAULT NULL);
  PROCEDURE pr_val_mgn (pi_key IN NUMBER, pi_boa_k IN NUMBER DEFAULT NULL);
  PROCEDURE pr_val_psg (pi_key IN NUMBER, pi_boa_k IN NUMBER DEFAULT NULL);
  --
  FUNCTION fn_id (pi_key IN NUMBER) RETURN VARCHAR2;
  FUNCTION fn_dsc (pi_key IN NUMBER) RETURN VARCHAR2;
  --
  --
END pk$dv0030;
/
