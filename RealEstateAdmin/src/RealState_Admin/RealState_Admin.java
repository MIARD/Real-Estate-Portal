/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RealState_Admin;

import com.mysql.jdbc.Connection;
//import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Vector;

import javax.swing.JFrame;
import javax.swing.table.TableModel;

/**
 *
 * @author Minhajul Abedin
 */
public class RealState_Admin {
    //Method for connecting with realstate database
     public static Connection mysql_dataBase_connection() throws ClassNotFoundException, SQLException{
        String url = "jdbc:mysql://127.0.0.1/realstate";
        String username = "root";
        String password = "";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = (Connection) DriverManager.getConnection(url, username, password);
        return connection;
        
    }
     //Take result set and return a table model of the result set.
    public static TableModel resultSetToTableModel(ResultSet rs) {
        try {
            ResultSetMetaData metaData = rs.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            Vector<String> columnNames = new Vector<String>();
            boolean[] canEdit = new boolean[numberOfColumns];
            
            // Get the column names
            for (int column = 0; column < numberOfColumns; column++) {
                columnNames.addElement(metaData.getColumnLabel(column + 1));
                canEdit[column]=false;
            }
            
            // Get all rows.
            Vector<Vector<Object>> rows = new Vector<>();
            
            while (rs.next()) {
                Vector<Object> newRow = new Vector<>();
                
                for (int i = 1; i <= numberOfColumns; i++) {
                    newRow.addElement(rs.getObject(i));
                }
                
                rows.addElement(newRow);
            }
            
            return new javax.swing.table.DefaultTableModel(rows, columnNames)
            {
                /**
                 *
                 */
                private static final long serialVersionUID = 1L;

                @Override
            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
            
            };
        } catch (Exception e) {
            e.printStackTrace();
            
            return null;
        }
    }
    /**
     *
     * @param table
     */
    //method to resize the colum of the table if necessary.
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        JFrame frame= new AdminLoginFrame();
        //frame.pack();
        frame.setLocationRelativeTo(null); //To show login frame in center of the display.
        frame.setVisible(true);            //Show login frame.
    }
    
}
