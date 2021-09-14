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


@WebServlet("/añadir_producto")
public class añadir_producto extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {

        DBproperties dbtest = new DBproperties("jdbc:oracle:thin:@localhost:1521:proyecto01db", "system",
                "Pabloymaki16");


        try {
            Connection con = dbtest.getConnection();
            String nombre_producto = request.getParameter("nombre_producto");
            String descripcion = request.getParameter("descripcion");
            String precio_unitario = request.getParameter("precio_unitario");
            String categoria = request.getParameter("categoria");

            String query = "{call SP_INSERT_PRODUCT (?,?,?,?,?)}";
            CallableStatement cstmt = con.prepareCall(query);
            cstmt.setString(1, nombre_producto);
            cstmt.setString(2, descripcion);
            cstmt.setString(3, precio_unitario);
            cstmt.setString(4, categoria);
            cstmt.executeQuery();





        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
