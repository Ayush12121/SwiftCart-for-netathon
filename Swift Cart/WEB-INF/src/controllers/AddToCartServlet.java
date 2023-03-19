package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

import models.Cart;

import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/addcart.do")
public class  AddToCartServlet extends HttpServlet {

       public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
   
                   response.setContentType("text/html");

                   try(PrintWriter out = response.getWriter()) {

                    ArrayList<Cart> cartList = new ArrayList<>();

                    int id = Integer.parseInt(request.getParameter("id"));

                    Cart cm = new Cart();
                    cm.setId(id);
                    cm.setQuantity(1);

                    HttpSession session = request.getSession();

                    session.getAttribute("cart-list");

                    ArrayList<Cart> cart_list = (ArrayList<Cart>)session.getAttribute("cart-list");

                    if(cart_list == null) {

                         cartList.add(cm);
                         session.setAttribute("cart-list",cartList);
                         out.print("Session Created and Added To list");
                    } else {
                         out.print("Cart List Exist");
                         cartList = cart_list;
                         for(Cart c : cartList) {
                          out.print(c.getId());
                         }
                    }

                   }

       }
    
}
