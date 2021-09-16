package com.example.db_interfaz.interfaz;

import com.example.db_interfaz.Database_properties.DBproperties;

import javax.servlet.RequestDispatcher;
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


@WebServlet("/login_cliente")
public class login_cliente extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {

        DBproperties dbtest = new DBproperties("jdbc:oracle:thin:@localhost:1521:proyecto01db", "system",
                "Pabloymaki16");

        try {
            response.sendRedirect("index_cliente.jsp");

            Connection con = dbtest.getConnection();
            String identificador = request.getParameter("identificador");
            String contraseña = request.getParameter("contraseña");



            String query = "{? = call FC_CLIENTE_LOGIN(?,?)}";
            CallableStatement cstmt = con.prepareCall(query);
            cstmt.registerOutParameter(1, Types.NUMERIC);
            cstmt.setString(2,identificador);
            cstmt.setString(3,contraseña);
            cstmt.executeQuery();


            if(cstmt.getInt(1) != 0){
                response.sendRedirect("index_cliente.jsp");
            }
            else{
                response.sendRedirect("login-cliente.jsp");
            }




        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
