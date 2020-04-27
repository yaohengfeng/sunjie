package Uservlet;
import Dao.userdao;
import Entity.userinfor;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class uupdataservlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        System.out.println("doPost！");
        /*System.out.println("dopost里的medid:"+medid);*/
        String username =req.getParameter("username");
        String password =req.getParameter("password");
        String actor =req.getParameter("actor");
        String email =req.getParameter("email");
        String name =req.getParameter("name");
        String telephone =req.getParameter("telephone");
        userinfor infor= new userinfor();
        infor.setId(Integer.valueOf(id));
        infor.setUsername(username);
        infor.setPassword(password);
        infor.setActor(actor);
        infor.setEmail(email);
        infor.setName(new String(name.getBytes("ISO-8859-1"),"UTF-8"));
        infor.setTelephone(telephone);
        userdao dao =new userdao();
        dao.updatauserinfor(infor);
        req.getRequestDispatcher("ushowservlet").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id=req.getParameter("id");
        System.out.println("修改获取的id："+id);
        if (id != null && !id.equals("")) {
            int uid = Integer.valueOf(id);
            userdao dao = new userdao();
            userinfor infor=dao.select(uid);
            req.setAttribute("user_tb",infor);
        }
        req.getRequestDispatcher("adminupdatauser.jsp").forward(req,resp);
    }
}
