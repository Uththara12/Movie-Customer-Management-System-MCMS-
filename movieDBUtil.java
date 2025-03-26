package com.movie;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class movieDBUtil {

	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<movie> validate(int mid ,String mname){
		ArrayList<movie> movies = new ArrayList<>();
		
		//validate
		try {
		
			con = DBConnect.getConnection();
			stmt =con.createStatement();
			
			String sql="select* from movie where id='"+mid+"' and name='"+mname+"'" ;
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				int idu =rs.getInt(1);
			String nameu=rs.getString(2);
			String description =rs.getString(3);
			int year=rs.getInt(4);
			String genre=rs.getString(5);
			String poster=rs.getString(6);
			String  movieurl=rs.getString(7);
			
			movie m =new movie(idu,nameu,description,year,genre,poster,movieurl);
			movies.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return movies;
		
	}
	
	
	
	public static boolean insertmovie(String name,String description,int year,String genre,String poster,String movieurl) {
		boolean isSuccess = false;
		
		
		
		try {
			  con=DBConnect.getConnection();
		       stmt=con.createStatement();
			
		     String sql = "insert into movie values (0,'"+name+"','"+description+"','"+year+"','"+genre+"','"+poster+"','"+movieurl+"')";
			int rs =stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		
		
		
		return isSuccess;
	}
	
	
	
	
	
	
	public static boolean updatemovie(String id,String name,String description,String year,String genre,String poster ,String movieurl ) {
		try {
			con= DBConnect.getConnection();
			stmt =con.createStatement();
			String sql="update movie set name='"+name+"',description ='"+description+"',year ='"+ year+"',genre='"+genre+"',poster ='"+poster+"',movieurl ='"+movieurl +"'"+
			"where id='"+id+"'";
			
			int rs =stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess=true;
				
			}else {
				isSuccess=false;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
		
	}
	
	
	public static List<movie> getMovieDetail(String Id){
		int convertedID=Integer.parseInt(Id);
		ArrayList<movie> movies =new ArrayList<>();
		try {
			con=DBConnect.getConnection();
			stmt= con.createStatement();
			String sql="select * from movie where id='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id =rs.getInt(1);
				String name =rs.getString(2);
				String description =rs.getString(3);
				int year = Integer.parseInt(rs.getString(4));
                String genre=rs.getString(5);
				String poster=rs.getString(6);
				String movieurl=rs.getString(7);
				movie m=new movie(id,name,description,year,genre,poster,movieurl);
				movies.add(m);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return movies;
	}
	public static boolean deleteMovie(String id) {
		int convId =Integer.parseInt(id);
		try {
			
			con =DBConnect.getConnection();
			stmt =con.createStatement();
			String sql="delete from movie where id='"+convId+"'";
			int rs =stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess =true;
			}else {
				isSuccess =false;
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
}
	