package com.servlet;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.FactoryProvider;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	  try {
		   String title=request.getParameter("title");
		   String content=request.getParameter("content");
		   int noteid=Integer.parseInt(request.getParameter("noteid").trim());
		   Session s = FactoryProvider.getFactory().openSession();
		   Transaction tx=s.beginTransaction();
		   Notes note = (Notes) s.get(Notes.class, noteid);
		   note.setTitle(title);
		   note.setContent(content);
		   note.setAddedDate(new Date());
		   tx.commit();
		   s.close();
		   response.sendRedirect("all_notes.jsp");
	  }
	  catch(Exception e){
		  
	  }
	}

}
