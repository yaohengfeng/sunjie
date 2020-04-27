package Uservlet;
import Dao.userdao;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class udeleteservlet extends HttpServlet{
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String  id = req.getParameter("id");
        System.out.println("删除获取的id："+id);
        if (id != null && !id.equals("")) {
            int ID = Integer.valueOf(id);
            userdao dao = new userdao();
            dao.deleteuserinfor(ID);
        }
        req.getRequestDispatcher("ushowservlet").forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
