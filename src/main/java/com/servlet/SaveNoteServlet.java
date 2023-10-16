package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			//fetching title and content;
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Notes note = new Notes(title,content,new Date());
		//	System.out.println(note.getId() + " : " + note.getTitle());
		  Session s=	FactoryProvider.getFactory().openSession();
		  Transaction tx = s.beginTransaction();
		  s.save(note);
		  tx.commit();
		  s.close();
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  out.println("<h1 style='text-align:center;'> Note is added Successfully</h1>");
		  out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>view all notes</h1>");
		  }
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
