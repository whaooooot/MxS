package repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Movie;

@Repository
public class MovieUserSessionRepository extends AbstractRepository{
	private final String namespace = "repository.mapper.MovieUserMapper";
 
	////////////////////////////////// 영화///////////////////////////////////////////
	
	//영화목록
	
	public List<Movie> movieList(String searchOption, String keyword) throws Exception {

		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".movieList";
		// 검색옵션, 키워드 맵에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);

		return sqlSession.selectList(statement, map);

	}
	
	
	
	
}
