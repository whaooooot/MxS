package repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.EventDTO;

@Repository
public class EventSessionRepository extends AbstractRepository{
	private final String namespace = "repository.mapper.EventMapper";
		
	public List<EventDTO> selectEvent() {
		
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectEvent";
		List<EventDTO> list = new ArrayList<EventDTO>();
		
		try {	
			list = sqlSession.selectList(statement);
			//System.out.println(list.size());
			//System.out.println(list);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	public Integer insertEvent(EventDTO eventdto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		// Connection conn
		try {

			String statement = namespace + ".insertEvent";
			int result = sqlSession.insert(statement, eventdto);
			if (result > 0) {

				sqlSession.commit();
			}
			return result;
		} finally {

			sqlSession.close();

		}
	}
/*	
	public Integer updateComment(Comment comment) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		
		Integer result = sqlSession.update(namespace + ".updateComment", comment);
		if(result>0) {
			
			sqlSession.commit();//트랜젝션 관리가 가능함
		}else {
			
			sqlSession.rollback();
			
		}
		return result;
	}
	
	public Integer deleteComment(Long commentNo) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		
		Integer result = sqlSession.delete(namespace + ".deleteComment", commentNo);
		if(result>0) {
			
			sqlSession.commit();//트랜젝션 관리가 가능함
		}else {
			
			sqlSession.rollback();
			
		}
		return result;
	}
	
	
	*/
	
	
	
}





	
	