create or replace PACKAGE pk$dv0077 AUTHID DEFINER AS
 /*
  * ===========================================================<br/>
  *  PURPOSE          : Derivatives Futures Trade Orders <br/>
  *  Created By       : Sola Adebayo <br/>
  *  Date Created     : 12-NOV-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  PROCEDURE pr_prvs (pi_ord_no  IN NUMBER DEFAULT NULL,
                     po_ins_yn  OUT VARCHAR2,
                     po_upd_yn  OUT VARCHAR2, 
                     po_del_yn  OUT VARCHAR2,
                     po_apr_yn  OUT VARCHAR2,
                     po_cls_yn  OUT VARCHAR2,
                     po_aud_yn  OUT VARCHAR2);
  --
  --
  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_20_ord_e%ROWTYPE);
  --
  --
  FUNCTION fn_dtl (pi_ord_no IN NUMBER) RETURN dv_vt_20_ord%ROWTYPE;
  --  
  --
  FUNCTION fn_dtl_e (pi_ord_no IN NUMBER) RETURN dv_vt_20_ord_e%ROWTYPE;
  --  
  --
  PROCEDURE pr_del (pi_ord_no IN NUMBER, 
                    pi_cn     IN NUMBER);
  --
  --
  PROCEDURE pr_apr (pi_ord_no IN NUMBER, 
                    pi_cn  IN NUMBER);
  --
	PROCEDURE pr_cls (pi_key IN NUMBER, pi_rmks IN VARCHAR2);
  --
END pk$dv0077;
/