package com.example.db_interfaz.Database_properties;

import java.sql.*;

public class DBproperties {

    private String connectionString;
    private String username;
    private String password;

    public DBproperties(){

    }

    public DBproperties(String connectionString, String username, String password){
        this.connectionString = connectionString;
        this.username = username;
        this.password = password;

    }

    public Connection getConnection() throws SQLException{
        return DriverManager.getConnection(this.connectionString,this.username,this.password);
    }

    public String getConnectionString() {
        return connectionString;
    }

    public void setConnectionString(String connectionString) {
        this.connectionString = connectionString;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
