package Dao;
import Entity.travelinfor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class traveldao {
    public List<travelinfor>getAlltravelinfor()
    {
        List<travelinfor> list = new ArrayList<travelinfor>();
        Connection conn = Handlesql.getconn();
        String sql="select * from travel_tb";

        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs=pst.executeQuery();
            while (rs.next())
            {
                travelinfor tinfor=new travelinfor();
                tinfor.setId(rs.getInt("id"));
                tinfor.setHdname(rs.getString("hdname"));
                tinfor.setHddidian(rs.getString("hddidian"));
                tinfor.setHdimg(rs.getString("hdimg"));
                tinfor.setHdtime(rs.getString("hdtime"));
                tinfor.setHdprice(rs.getString("hdprice"));
                list.add(tinfor);
            }
            rs.close();
            pst.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
