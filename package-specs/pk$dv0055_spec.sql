create or replace PACKAGE pk$dv0055 AUTHID DEFINER AS
 /**
  * ===========================================================<br/>
  *  PURPOSE 		  : FUTURES - Market Data - Margin Obligation <br/>
  *  SCHEMA			  : SYMPLUS <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 20-DEC-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  PROCEDURE pr_prvs (pi_key  IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2);
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_20_ngx_obl_mgn_e%ROWTYPE);
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN dv_vt_20_ngx_obl_mgn%ROWTYPE;
  --  
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN dv_vt_20_ngx_obl_mgn_e%ROWTYPE;
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER);
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER);
  --
END pk$dv0055;
/