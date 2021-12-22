create or replace PACKAGE pk$dv0052 AUTHID DEFINER AS
 /**
  * ===========================================================<br/>
  *  PURPOSE 		  : DV Portfolio Group Interface <br/>
  *  SCHEMA			  : SYMPLUS <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 20-OCT-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  FUNCTION fn_edt_prv RETURN BOOLEAN;
  --
  PROCEDURE pr_mnt;
  --
  PROCEDURE pr_mnt_upd (pi_itf_k NUMBER, pi_acct_k IN NUMBER);
  --
  PROCEDURE pr_val (pi_ptfg_k NUMBER DEFAULT NULL);
  --
END pk$dv0052;
/