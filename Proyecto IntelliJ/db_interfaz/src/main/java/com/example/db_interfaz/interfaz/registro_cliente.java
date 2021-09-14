package com.example.db_interfaz.interfaz;

import com.example.db_interfaz.Database_properties.DBproperties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;


@WebServlet("/registro_cliente")
public class registro_cliente extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {

        DBproperties dbtest = new DBproperties("jdbc:oracle:thin:@localhost:1521:proyecto01db", "system",
                "Pabloymaki16");


        try {
            Connection con = dbtest.getConnection();
            String cedula = request.getParameter("cedula");
            String nombre_cliente = request.getParameter("nombre_cliente");
            String apellido1 = request.getParameter("apellido1");
            String apellido2 = request.getParameter("apellido2");
            String apodo = request.getParameter("apodo");
            String telefono_cliente = request.getParameter("telefono_cliente");
            String contraseña = request.getParameter("contraseña");
            String provincia_cliente = request.getParameter("provincia_cliente");

            response.setContentType("text/html");

            String query = "{exec cliente_insert (?,?,?,?,?,?,?,?)}";
            CallableStatement cstmt = con.prepareCall(query);
            cstmt.setString(1,cedula);
            cstmt.setString(2,nombre_cliente);
            cstmt.setString(3,apellido1);
            cstmt.setString(4,apellido2);
            cstmt.setString(5,telefono_cliente);
            cstmt.setString(6,contraseña);
            cstmt.setString(7,apodo);
            cstmt.setString(8, provincia_cliente);
            cstmt.execute();



        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
