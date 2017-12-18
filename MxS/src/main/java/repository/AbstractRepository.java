package repository;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class AbstractRepository {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		setSqlSessionFactory();//초기화 시켜줘야 반환을 해줌
	}	
	private static void setSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream inputStream =null;
		
		try {			
			inputStream = Resources.getResourceAsStream(resource);			
		}catch(IOException e) {
			e.printStackTrace();			
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);				
	}
	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;		
	}		
}
