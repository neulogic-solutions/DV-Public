create or replace PACKAGE pk$dv0012 AUTHID DEFINER AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : Transaction Codes <br/>
  *  Created By       : Ridwan Sulaimon <br/>
  *  Date Created     : 30-SEP-2021 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  PROCEDURE pr_edit (pi_key         NUMBER, 
                     pi_cr_trn_id   VARCHAR2, 
                     pi_dr_trn_id   VARCHAR2); 
  --
  FUNCTION fn_edit_prv RETURN BOOLEAN;
  -- 
  PROCEDURE pr_val (pi_trn_id IN VARCHAR2);
  --
  FUNCTION fn_dsc (pi_trn_id IN VARCHAR2) RETURN VARCHAR2;
  --   
END pk$dv0012;
/