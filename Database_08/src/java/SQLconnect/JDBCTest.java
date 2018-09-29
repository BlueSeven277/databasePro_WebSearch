/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQLconnect;

/**
 *
 * @author srx
 */

import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.SQLException;  
 
 
public class JDBCTest {
   // 连接实例  
    private static Connection conn = null;  
    //连接地址  
    String url = "jdbc:mysql://localhost:3306/rent_income";  
    // MySQL用户名  
    String user = "root";  
    // MySQL密码  
    String password = "admin";   
  
    public JDBCTest() throws Exception {  
        Class.forName("com.mysql.jdbc.Driver");  
        conn=DriverManager.getConnection(url+"?useSSL=false",user,password); 
//         Statement stmt = conn.createStatement();
//           // sql = "create table student(NO char(20),name varchar(20),primary key(NO))";
//            String sql = "select * from location where Lid = '1021'";
//        
//                ResultSet rs = stmt.executeQuery(sql);// executeQuery会返回结果的集合，否则返回空值
//                System.out.println("-----------");
//                while (rs.next()) {
//                    System.out.println(rs.getString(1) + "\t" + rs.getString(2));// 入如果返回的是int类型可以用getInt()
//                }
    }  
      
    //获得连接对象  
    public static Connection getConnection(){  
        return conn;  
    }  
      
    //关闭连接  
    public static void CloseCon() throws SQLException{  
        conn.close();  
    }  
 
    
 
}