create or replace PACKAGE pk$dv0081 AUTHID DEFINER AS
 /**
  * ===========================================================<br/>
  *  PURPOSE 		  : Derivatives Futures Contract Closure <br/>
  *  SCHEMA			  : SYMPLUS <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 28-FEB-2022 <br/>
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
  PROCEDURE pr_prc (pi_rec IN OUT DV_VT_20_CLS_e%ROWTYPE);
  --
  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN DV_VT_20_CLS%ROWTYPE;
  --  
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN DV_VT_20_CLS_e%ROWTYPE;
  --
  PROCEDURE pr_del (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER);
  --
  PROCEDURE pr_apr (pi_key IN NUMBER, 
                    pi_cn  IN NUMBER);
  --
  PROCEDURE pr_upd_ctt_dtl (pi_key    IN NUMBER, 
                            pi_cls_yn IN VARCHAR2 DEFAULT '0');
  --
END pk$dv0081;
/