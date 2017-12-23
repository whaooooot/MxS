package repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Theater;




@Repository
public class TheaterSessionRepository extends AbstractRepository {
	private final String namespace = "repository.mapper.TheaterMapper";

	public void insertTheater(Theater tt) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".insertTheater";
			int result = sqlSession.insert(statement, tt);
			// System.out.println("a");

			if (result > 0) {

				sqlSession.commit();
			}
		} finally {

			sqlSession.close();

		}

	}

	public Integer updateTheater(Theater tt) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();

		Integer result = sqlSession.update(namespace + ".updateTheater", tt);

		if (result > 0) {

			sqlSession.commit();
		} else {

			sqlSession.rollback();

		}
		return result;
	}

	public Integer deleteTheater(Long theaterNum) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();

		Integer result = sqlSession.delete(namespace + ".deleteTheater", theaterNum);
		if (result > 0) {

			sqlSession.commit();
		} else {

			sqlSession.rollback();

		}
		return result;
	}

	// 게시글 전체 목록

	public List<Theater> listAll(String searchOption, String keyword) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listAll";
		// 검색옵션, 키워드 맵에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);

		return sqlSession.selectList(statement, map);
		
		
		

	}
	//레코스 갯수
	public int countArticle(String searchOption, String keyword) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".countArticle";
		// 검색옵션, 키워드 맵에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectOne(statement, map);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
