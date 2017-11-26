import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
import org.python.util.PythonInterpreter;
import javax.script.*;
import java.io.*;  
import static java.lang.System.*; 
	
public class loginServlet extends HttpServlet{  
    protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{  
                         String username=request.getParameter("username");  
                         String password=request.getParameter("password");  
                         System.out.println("username=" + username);  
                         System.out.println("password=" + password);  
                           
                         response.setContentType("text/html");  
                         response.getWriter().println("Login Sucess!!!");  

                         try {
                             Process proc=Runtime.getRuntime().exec("python d:\\input.py"); //执行py文件
                             InputStreamReader stdin=new InputStreamReader(proc.getInputStream());
                             LineNumberReader input=new LineNumberReader(stdin);
                             String line;
                             while((line=input.readLine())!=null ){
                                 System.out.println(line);//得到输出
                             }
                         } catch (IOException e) {
                             // TODO Auto-generated catch block
                             e.printStackTrace();
                         }
                         
                         
}  
}