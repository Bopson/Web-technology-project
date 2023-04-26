/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rw.ac.auca.registration.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class DatabaseUtil {

    public static Connection getConnection() throws SQLException {
        //register driver
        DriverManager.registerDriver(new org.postgresql.Driver());

        //get connection
        String url = "jdbc:postgresql://localhost:5433/Student_database";
        String username = "postgres";
        String password = "root";
        return DriverManager.getConnection(url, username, password);
    }
}
