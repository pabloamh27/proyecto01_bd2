package com.example.db_interfaz.interfaz;

import com.example.db_interfaz.Database_properties.DBproperties;
import oracle.jdbc.OracleArray;
import oracle.jdbc.OracleType;
import oracle.jdbc.OracleTypes;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/registro_pyme")
public class registro_pyme extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {

        DBproperties dbtest = new DBproperties("jdbc:oracle:thin:@localhost:1521:proyecto01db", "system",
                "Pabloymaki16");


        try {
            Connection con = dbtest.getConnection();
            String cedula_juridica = request.getParameter("cedula_juridica");
            String nombre_pyme = request.getParameter("nombre_pyme");
            String email = request.getParameter("email");
            String telefono_pyme = request.getParameter("telefono_pyme");
            String clave = request.getParameter("clave");
            String provincia_pyme = request.getParameter("provincia_pyme");

            response.setContentType("text/html");

            String query = "{exec pyme_insert (?,?,?,?,?,?)}";
            CallableStatement cstmt = con.prepareCall(query);
            cstmt.setString(1,cedula_juridica);
            cstmt.setString(2,nombre_pyme);
            cstmt.setString(3,email);
            cstmt.setString(4,telefono_pyme);
            cstmt.setString(5,clave);
            cstmt.setString(6,provincia_pyme);
            cstmt.execute();



        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
