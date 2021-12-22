create or replace PACKAGE BODY pk$dv0012 AS
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
                     pi_dr_trn_id   VARCHAR2) IS
	BEGIN 
    pkdv_00_trn.pr_edit (pi_key        => pi_key, 
                         pi_cr_trn_id  => pi_cr_trn_id, 
                         pi_dr_trn_id  => pi_dr_trn_id); 
	pkdv_00.pr_commit;
	--
	END pr_edit; 
  --
  FUNCTION fn_edit_prv RETURN BOOLEAN IS 
  --
    BEGIN 
		RETURN pkdv_00_trn.fn_edit_prv; 
    END fn_edit_prv;
  -- 
  PROCEDURE pr_val (pi_trn_id IN VARCHAR2) IS 
    BEGIN 
		pkdv_00_trn.pr_val (pi_trn_id => pi_trn_id); 
		pkdv_00.pr_commit; 
	END pr_val;
  --
  FUNCTION fn_dsc (pi_trn_id IN VARCHAR2) RETURN VARCHAR2 IS 
  --
    BEGIN 
		RETURN pkdv_00_trn.fn_dsc (pi_trn_id => pi_trn_id); 
    END fn_dsc;
  --   
END pk$dv0012;
/