create or replace PACKAGE pk$dv0029 AUTHID DEFINER AS
 /**
  * ===========================================================<br/>
  *  PURPOSE 		  : DV Broker Parameters <br/>
  *  SCHEMA			  : SYMPLUS <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 15-OCT-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  FUNCTION fn_edt RETURN BOOLEAN;
  --
  PROCEDURE pr_mnt (pi_key NUMBER);
  --
  PROCEDURE pr_mnt_all;
  --
  PROCEDURE pr_prc (pi_rec IN dv_vt_00_xpv_e%ROWTYPE);
  --
END pk$dv0029;
/