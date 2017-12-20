package repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.EventDTO;

@Repository
public class EventSessionRepository extends AbstractRepository1{
	private final String namespace = "repository.mapper.EventMapper";
		
	public List<EventDTO> selectEvent() {
		
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectEvent";
		List<EventDTO> list = new ArrayList<EventDTO>();
		
		try {
	
			list =  sqlSession.selectList(statement);
			System.out.println(list.size());
			System.out.println(list);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}





	
	