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


            String query = "{call cliente_insert (?,?,?,?,?,?,?,?)}";
            CallableStatement statement = con.prepareCall(query);
            statement.setString(1,cedula);
            statement.setString(2,nombre_cliente);
            statement.setString(3,apellido1);
            statement.setString(4,apellido2);
            statement.setString(5,telefono_cliente);
            statement.setString(6,contraseña);
            statement.setString(7,apodo);
            statement.setString(8,provincia_cliente);
            statement.executeQuery();



        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
