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
import java.sql.Types;


@WebServlet("/editar_producto")
public class editar_producto extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {

        DBproperties dbtest = new DBproperties("jdbc:oracle:thin:@localhost:1521:proyecto01db", "system",
                "Pabloymaki16");


        try {
            Connection con = dbtest.getConnection();
            String identificador = request.getParameter("identificador");
            String contraseña = request.getParameter("contraseña");


            String query = "{call SP_EDIT_PRODUCT(?,?)}";
            CallableStatement cstmt = con.prepareCall(query);
            cstmt.setString(2,identificador);
            cstmt.setString(3,contraseña);
            cstmt.executeQuery();




        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
