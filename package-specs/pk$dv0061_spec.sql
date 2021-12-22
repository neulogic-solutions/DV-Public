create or replace PACKAGE pk$dv0061 AUTHID DEFINER AS
 /*
  * ===========================================================<br/>
  *  PURPOSE : DV Portfolio Parameters <br/>
  *  SCHEMA: SYMPLUS <br/>
  *  Created By       : Sola Adebayo  <br/>
  *  Date Created     : 08-NOV-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  FUNCTION fn_edt RETURN BOOLEAN;
  PROCEDURE pr_mnt (pi_key NUMBER);
  PROCEDURE pr_mnt_all;
  --
  PROCEDURE pr_prc (pi_rec IN dv_vt_00_xpv_e%ROWTYPE);  
  --
END pk$dv0061;
/