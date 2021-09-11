CREATE OR REPLACE PROCEDURE SP_CANCEL_ORDER(
order_id number
) as 
begin
    UPDATE Orden od set estado=1 where order_id=od.orden_id;
end;


--CREATE OR REPLACE PROCEDURE SP_SELECT_ORDER(
--order_id number,
--status number
--) as 
--begin
--    SELECT * FROM Orden od WHERE od.orden_id=order_id and od.estado=status;
--end;