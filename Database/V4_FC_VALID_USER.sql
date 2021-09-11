-- VALIDATION OF THE CLIENT DATA
create or replace FUNCTION FC_VALID_CLIENTE (
    new_cedula      VARCHAR2,
    new_apodo   VARCHAR2,
    new_telefono_cliente    VARCHAR2
    ) 
RETURN NUMBER 
IS
    apodex NUMBER;
    cedulex NUMBER;
    numberx NUMBER;
begin

    SELECT COUNT(*) INTO apodex from Cliente where new_apodo=apodo;
    SELECT COUNT(*) INTO cedulex from Cliente where new_cedula=cedula;
    SELECT COUNT(*) INTO numberx from Cliente where new_telefono_cliente=telefono_cliente;
    
    IF apodex=0 and cedulex=0 and numberx=0 then
        return 0;
    Else 
        IF apodex!=0 then
            return 1;
        END IF;
        
        IF cedulex!=0 then
            return 2;
        END IF;
        
        IF numberx!=0 then
            return 3;
        END IF;
    end if;
end;

-- VALIDATION OF THE PYMES DATA
create or replace FUNCTION FC_VALID_PYME (
    new_cedula      VARCHAR2,
    new_email   VARCHAR2,
    new_telefono_cliente    VARCHAR2
    ) 
RETURN NUMBER 
IS
    emailex NUMBER;
    cedulex NUMBER;
    numberx NUMBER;
begin

    SELECT COUNT(*) INTO emailex from Pyme where new_email=email;
    SELECT COUNT(*) INTO cedulex from Pyme where new_cedula=cedula_juridica;
    SELECT COUNT(*) INTO numberx from Pyme where new_telefono_cliente=telefono_pyme;
    
    IF emailex=0 and cedulex=0 and numberx=0 then
        return 0;
    Else 
        IF emailex!=0 then
            return 1;
        END IF;
        
        IF cedulex!=0 then
            return 2;
        END IF;
        
        IF numberx!=0 then
            return 3;
        END IF;
    end if;
end;

