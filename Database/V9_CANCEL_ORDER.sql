CREATE OR REPLACE PROCEDURE SP_CANCEL_ORDER(
order_id number
) as 
begin
    UPDATE Orden od set estado=0 where order_id=od.orden_id;
end;
