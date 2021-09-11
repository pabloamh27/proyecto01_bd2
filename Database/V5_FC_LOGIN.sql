
-- LOGIN DEL CLIENTE 
CREATE OR REPLACE FUNCTION FC_CLIENTE_LOGIN(ident VARCHAR2, pass VARCHAR2) 
RETURN number is
resultado number;
c_id number;
new_pass BLOB;
begin
    new_pass:= TO_BLOB(utl_raw.cast_to_raw(pass));
    select count(*) into resultado from Cliente cl where (ident=cl.apodo or  ident=cl.telefono_cliente or ident=cl.cedula) and dbms_lob.compare(new_pass, cl.contraseña) = 0;
    if resultado = 1 then
        select cliente_id into c_id from Cliente cl where (ident=cl.apodo or  ident=cl.telefono_cliente or ident=cl.cedula) and dbms_lob.compare(new_pass, cl.contraseña) = 0;
        return c_id;
    END IF;
    return 0;
end;


-- LOGIN DEL PYME 
CREATE OR REPLACE FUNCTION FC_PYME_LOGIN(ident VARCHAR2, pass VARCHAR2) 
RETURN number is
resultado number;
p_id number;
new_pass BLOB;
begin
    new_pass:= TO_BLOB(utl_raw.cast_to_raw(pass));
    select count(*) into resultado from Pyme py where (ident=py.cedula_juridica or ident=py.telefono_pyme or ident=py.email) and dbms_lob.compare(new_pass, py.clave) = 0;
    if resultado = 1 then
        select pyme_id into p_id from Pyme py where (ident=py.cedula_juridica or ident=py.telefono_pyme or ident=py.email) and dbms_lob.compare(new_pass, py.clave) = 0;
        return p_id;
    END IF;
    return 0;
end;
