package com.helper;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
  public static SessionFactory factory;
  public static SessionFactory getFactory()
  {
	  if(factory==null)
	  {
		  factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	  }
	  return factory;
  }
  public  void closeFactory()
  {
	  if(((EntityManagerFactory) factory).isOpen())
	  {
		  factory.close();
	  }
  }
}
