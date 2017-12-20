package repository;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public abstract class AbstractRepository1 {
	 private static SqlSessionFactory sqlSessionFactory;
	   static {
	      setSqlSessionFactory();
	   }
	   private static void setSqlSessionFactory() {
	      String resource = "mybatis-eventconfig.xml";
	      InputStream inputStream = null;
	      try {
	         inputStream = Resources.getResourceAsStream(resource);
	      }catch(IOException e) {
	         e.printStackTrace();
	      }
	      sqlSessionFactory =
	            new SqlSessionFactoryBuilder().build(inputStream);
	   }
	   public SqlSessionFactory getSqlSessionFactory() {
	      return sqlSessionFactory;
	   }
	   
	}

