package Real_State_user;


import java.awt.Component;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import javax.swing.JTable;

import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumnModel;
import javax.swing.table.TableModel;


public class DbUtils {
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
            {@Override
            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
            public void resizeColumnWidth(JTable table){
                final TableColumnModel columnModel=table.getColumnModel();
                for(int column=0; column< table.getColumnCount();column++){
                    int width=15;
                    for(int row=0; row<table.getRowCount();row++){
                        TableCellRenderer renderer=table.getCellRenderer(row,column);
                        Component comp=table.prepareRenderer(renderer, row, column);
                        width=Math.max(comp.getPreferredSize().width+1,width);
                        
                    }
                    if(width>300)
                    {
                        width=300;
                        columnModel.getColumn(column).setPreferredWidth(width);
                    }
                }
                
            }
            };
        } catch (Exception e) {
            e.printStackTrace();
            
            return null;
        }
    }
    
    public static List<List<Object>> resultSetToNestedList(ResultSet rs, boolean includeColumnNames) {
        try {
            // To contain all rows.
            List<List<Object>> rows = new ArrayList<List<Object>>();
            ResultSetMetaData metaData = rs.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            
            // Include column headers as first row if required
            if (includeColumnNames) {
                List<Object> columnNames = new ArrayList<Object>();
                
                // Get the column names
                for (int column = 0; column < numberOfColumns; column++) {
                    columnNames.add(metaData.getColumnLabel(column + 1));
                }
                rows.add(columnNames);
            }
            
            // Get the data
            while (rs.next()) {
                List<Object> newRow = new ArrayList<>();
                
                for (int i = 1; i <= numberOfColumns; i++) {
                    newRow.add(rs.getObject(i));
                }
                
                rows.add(newRow);
            }
            return rows;
        } catch (SQLException e) {
            
            return null;
        }
    }
    
    public static List<List<Object>> resultSetToNestedList(ResultSet rs) {
        try {
            // To contain all rows.
            List<List<Object>> rows = new ArrayList<>();
            ResultSetMetaData metaData = rs.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            
            // Get the data
            while (rs.next()) {
                List<Object> newRow = new ArrayList<>();
                
                for (int i = 1; i <= numberOfColumns; i++) {
                    newRow.add(rs.getObject(i));
                }
                
                rows.add(newRow);
            }
            return rows;
        } catch (SQLException e) {
            
            return null;
        }
    }
    
    
    /**
     * @param args
     */
    public static void main(String[] args) {
        
    }
}
