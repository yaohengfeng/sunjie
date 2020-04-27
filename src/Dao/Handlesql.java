package Dao;
import java.sql.*;
public class Handlesql {
    static Connection conn=null;
    static String driver="com.mysql.cj.jdbc.Driver";
    static String url="jdbc:mysql://localhost:3306/ding?useSSL=false&serverTimezone=UTC";
    static String user="root";
    static String password="123456";
    public static Connection getconn(){
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            conn = DriverManager.getConnection(url,user,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
}
