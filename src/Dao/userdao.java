package Dao;
import Entity.userinfor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class userdao {
    public List<userinfor>getAlluserinfor()
    {
        List<userinfor> list = new ArrayList<userinfor>();
        Connection conn = Handlesql.getconn();
        String sql="select * from user_tb";

        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs=pst.executeQuery();
            while (rs.next())
            {
                userinfor uinfor=new userinfor();
                uinfor.setId(rs.getInt("id"));
                uinfor.setUsername(rs.getString("username"));
                uinfor.setPassword(rs.getString("password"));
                uinfor.setActor(rs.getString("actor"));
                uinfor.setEmail(rs.getString("email"));
                uinfor.setName(rs.getString("name"));
                uinfor.setTelephone(rs.getString("telephone"));
                list.add(uinfor);
            }
            rs.close();
            pst.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
return list;
    }
    public boolean adduserinfor(userinfor us)
    {
        String sql ="INSERT INTO user_tb (`id`,`username`,`password`,`actor`,`email`,`name`,`telephone`)VALUES(null,?,?,?,?,?,?)";
        Connection conn =Handlesql.getconn();
            try {
                PreparedStatement pst =conn.prepareStatement(sql);
                pst.setString(1,us.getUsername());
                pst.setString(2,us.getPassword());
                pst.setString(3,us.getActor());
                pst.setString(4,us.getEmail());
                pst.setString(5,us.getName());
                pst.setString(6,us.getTelephone());
                int count = pst.executeUpdate();
                pst.close();
                return  count >0?true:false;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        return false;
    }
    public boolean deleteuserinfor(int id)
    {
        String sql ="delete from user_tb where id = ?";
        Connection conn= Handlesql.getconn();
        try {
            PreparedStatement pst= conn.prepareStatement(sql);
            pst.setInt(1,id);
            int count =pst.executeUpdate();
            pst.close();
            return count>0?true:false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean updatauserinfor(userinfor us)
    {
        System.out.println("updata方法被调用！");
        System.out.println("id:"+us.getId());
        System.out.println("username:"+us.getUsername());
        String sql="update user_tb set `username`=?,`password`=?,`actor`=?,`email`=?,`name`=?,`telephone`=? where `id`=?";
        Connection conn= Handlesql.getconn();
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1,us.getUsername());
            pst.setString(2,us.getPassword());
            pst.setString(3,us.getActor());
            pst.setString(4,us.getEmail());
            pst.setString(5,us.getName());
            pst.setString(6,us.getTelephone());
            pst.setInt(7,us.getId());
            int count = pst.executeUpdate();
            pst.close();
            return count>0?true:false;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public userinfor select(int id)
    {
        System.out.println("select方法被调用！");
        System.out.println("接受到的id："+id);
        Connection conn= Handlesql.getconn();
        String sql="select * from user_tb where id="+id;
        userinfor infor =null;
        try {
            PreparedStatement pst =conn.prepareStatement(sql);
            ResultSet rst =pst.executeQuery();
            while(rst.next())
            {
                infor =new userinfor();
                infor.setId(rst.getInt("id"));
                infor.setUsername(rst.getString("username"));
                infor.setPassword(rst.getString("password"));
                infor.setActor(rst.getString("actor"));
                infor.setEmail(rst.getString("email"));
                infor.setName(rst.getString("name"));
                infor.setTelephone(rst.getString("telephone"));
            }
            rst.close();
            pst.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return infor;
    }
}
