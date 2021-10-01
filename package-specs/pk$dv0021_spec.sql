create or replace PACKAGE pk$dv0021 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : DV Exchange Parameters <br/>
  *  SCHEMA: SYMPLUS <br/>
  *  Created By       : Joyce Ifada  <br/>
  *  Date Created     : 30-SEP-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  FUNCTION fn_edt RETURN BOOLEAN;
  --
  PROCEDURE pr_mnt (pi_key NUMBER);
  --
  PROCEDURE pr_prc (pi_rec IN dv_vt_00_xpv_e%ROWTYPE);
  --
END pk$dv0021;
