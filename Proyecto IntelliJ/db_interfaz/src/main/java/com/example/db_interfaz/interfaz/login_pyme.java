package com.example.db_interfaz.interfaz;

import com.example.db_interfaz.Database_properties.DBproperties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;


@WebServlet("/login_pyme")
public class login_pyme extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {

        DBproperties dbtest = new DBproperties("jdbc:oracle:thin:@localhost:1521:proyecto01db", "system",
                "Pabloymaki16");


        try {
            Connection con = dbtest.getConnection();
            String identificador = request.getParameter("identificador");
            String clave = request.getParameter("clave");



            String query = "{? = call FC_PYME_LOGIN(?,?)}";
            CallableStatement cstmt = con.prepareCall(query);
            cstmt.registerOutParameter(1,Types.INTEGER);
            cstmt.setString(2,identificador);
            cstmt.setString(3,clave);
            cstmt.executeQuery();
            ResultSet rs = (ResultSet) cstmt.getObject(1);



        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
