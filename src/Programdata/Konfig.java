/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Programdata;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author HP
 */
    public class Konfig{
        private static Connection MySQLConfig;
        
        public static Connection configDB() throws SQLException{
            try{
                String url = "jdbc:mysql//localhost/dblogin";
                String user = "root";
                String pass = "";
                
                DriverManager.registerDriver((new com.mysql.cj.jdbc.Driver()));
                MySQLConfig = DriverManager.getConnection(url,user,pass);
                
                
            }catch(SQLException e){
                JOptionPane.showMessageDialog(null,"Gagal terkoneksi Karena " + e.getMessage());
            }
            return MySQLConfig;
        }
    }
