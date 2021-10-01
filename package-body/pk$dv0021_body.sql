create or replace PACKAGE BODY pk$dv0021  AS
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
  FUNCTION fn_edt RETURN BOOLEAN IS
  BEGIN
    RETURN pkdv_10_xch_xpv.fn_edt;
  END;
  --
  PROCEDURE pr_mnt (pi_key NUMBER) IS
  BEGIN
    pkdv_10_xch_xpv.pr_mnt (pi_key => pi_key);
	pkdv_00.pr_commit;
  END;
  --
  PROCEDURE pr_prc (pi_rec IN dv_vt_00_xpv_e%ROWTYPE) IS
  BEGIN
    pkdv_10_xch_xpv.pr_prc (pi_rec => pi_rec);
	pkdv_00.pr_commit; 
  END;
  --
END pk$dv0021;