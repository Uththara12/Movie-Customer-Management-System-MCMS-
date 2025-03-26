package com.customer;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<Customer> validate(String userName, String password) {
        ArrayList<Customer> cus = new ArrayList<>();


   //Validate
        try {
                con = DBConnect.getConnection();
                stmt = con.createStatement();
                String sql = "SELECT * FROM supportmovie WHERE username = '" + userName + "' AND password = '" + password + "'";
                rs = stmt.executeQuery(sql);

                if (rs.next()) {
                    int id = rs.getInt(1);
                    String name = rs.getString(2);
                    String email = rs.getString(3);
                    String phone = rs.getString(4);
                    String userU = rs.getString(5);
                    String passU = rs.getString(6);
                    String message = rs.getString(7);

                    Customer c = new Customer(id, name, email, phone, userU, passU, message);
                    cus.add(c);
                }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cus;
    }

    public static boolean insertCustomer(String name, String email, String phone, String username, String password, String message) {
        boolean isSuccess = false;
        
        
        try {
           

            con = DBConnect.getConnection();
            stmt = con.createStatement();

                String sql = "INSERT INTO supportmovie (name, email, phone, username, password, message) VALUES ('"
                        + name + "', '" + email + "', '" + phone + "', '" + username + "', '" + password + "', '" + message + "')";
                int rs = stmt.executeUpdate(sql);

                if(rs>0) {
                	isSuccess = true;
                }else {
                	isSuccess = false;
                }
            
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
 // CustomerDBUtil.java
    public static boolean updatecustomer(String id, String name, String email, String phone, String username, String password, String message) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql ="update supportmovie set name='"+name+"', email='"+email+"', phone='"+phone+"', username='"+username+"', password='"+password+"', message='"+message +"'"+ " where id='"+id+"'";
            int rs = stmt.executeUpdate(sql);
            
            if(rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
       
                
            } catch(SQLException e) {
                e.printStackTrace();
            }
        
        return isSuccess;
    }
     public static List<Customer>getCustomerDetails(String Id){
    	 
    	 int convertID = Integer.parseInt(Id);
    	 ArrayList<Customer> cus = new ArrayList<>();
    	 
    	 try {
    		 con = DBConnect.getConnection();
    		 stmt = con.createStatement();
    		 String sql = "select * from supportmovie where id ='"+convertID+"'";
    		 rs = stmt.executeQuery(sql);
    		 
    		 while(rs.next()) {
    			 int id = rs.getInt(1);
    			 String name = rs.getString(2);
    			 String email = rs.getString(3);
    			 String phone = rs.getString(4);
    			 String username = rs.getString(5);
    			 String password = rs.getString(6);
    			 String message = rs.getString(7);
    			 
    			 Customer c = new Customer(id,name,email,phone,username,password,message);
    			 cus.add(c);
    		 }
    	 }
    	 catch(Exception e) {
    		 e.printStackTrace();;
    	 }
    	 return cus;
     }
     
     public static boolean deleteCustomer(String id) {
    	 
    	 int convId = Integer.parseInt(id);
    	 
    	 try {
    		 con = DBConnect.getConnection();
    		 stmt = con.createStatement();
    		 String sql = "delete from supportmovie where id='"+convId+"'";
    		 int r =stmt.executeUpdate(sql);
    		if(r>0) {
    			isSuccess = true;
    		}else {
    			isSuccess = false;
    		}
    	 }
    	 catch(Exception e) {
    		 e.printStackTrace();
    	 }
    	 
    	 return isSuccess;
     }
}


