/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JAVAS;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Naga
 */
public class Conexion {
    
    public Conexion(){}
    
    public Connection conectar(String user,String pass){
        Connection conn=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scooter",user,pass);
        }catch(Exception e){System.out.println("Connection Exception");}
        return conn;
    }
}
