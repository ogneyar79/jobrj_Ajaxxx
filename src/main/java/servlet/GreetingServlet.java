package servlet;

import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class GreetingServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<String> list = new ArrayList<>();

        Gson gson = new Gson();
        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");

        PrintWriter writer = new PrintWriter(resp.getOutputStream());
        resp.setHeader("Access-Control-Allow-Origin", "*");
        list.add(name);
        list.add("Nice to meet you, ");
        String js = gson.toJson(list);
        System.out.println(js + "GreetingServlet doGet");
        writer.println(js);
        writer.flush();
    }
}
