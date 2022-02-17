/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Real_State_user;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Mohammedh Riyadh
 */
public class Real_State_user {

    /**
     * @param args the command line arguments
     */
    public static Connection dbConnection() throws ClassNotFoundException, SQLException{
        String url = "jdbc:mysql://127.0.0.1/realstate";
        String username = "root";
        String password = "";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = (Connection) DriverManager.getConnection(url, username, password);
        return connection;
        
    }
    public static void main(String[] args) {
        
        LoginPage lf=new LoginPage();
        lf.setVisible(true);
        
    }
    
}
