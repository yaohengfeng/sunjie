package Entity;
import java.io.Serializable;
public class travelinfor implements Serializable{
    private static final long serialVersionUID = 1L;
    private int id;
    private String hdname;
    private String hddidian;
    private String hdimg;
    private String hdtime;
    private String hdprice;
    public int getId(){
        return id;
    }

    public void setId(int id){
        this.id = id;
    }
    public String getHdname(){
        return hdname;
    }
    public void setHdname(String hdname) {
        this.hdname=hdname;
    }
    public String getHddidian(){
        return hddidian;
    }
    public void setHddidian(String hddidian) {
        this.hddidian=hddidian;
    }
    public String getHdimg(){
        return hdimg;
    }
    public void setHdimg(String hdimg) {
        this.hdimg=hdimg;
    }
    public String getHdtime(){
        return hdtime;
    }
    public void setHdtime(String hdtime) {
        this.hdtime=hdtime;
    }
    public String getHdprice(){
        return hdprice;
    }
    public void setHdprice(String hdprice) {
        this.hdprice=hdprice;
    }
}
