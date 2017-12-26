package repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Movie;
import model.Theater;

@Repository
public class MovieAdminSessionRepository extends AbstractRepository {

	private final String namespace = "repository.mapper.MovieAdminMapper";

	////////////////////////////////// 영화///////////////////////////////////////////
	
	//영화목록
	public List<Movie> movieList(String searchOption, String keyword) throws Exception {

		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listAll";
		// 검색옵션, 키워드 맵에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);

		return sqlSession.selectList(statement, map);

	}

	// 레코스 갯수
	public int countArticle(String searchOption, String keyword) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".countArticle";
		// 검색옵션, 키워드 맵에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectOne(statement, map);
	}
	//영화등록
	public void insertMovie(Movie movie) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".insertMovie";
			int result = sqlSession.insert(statement, movie);
			// System.out.println("a");

			if (result > 0) {

				sqlSession.commit();
			}
		} finally {

			sqlSession.close();

		}

	}
	//영화 상세
	public Movie movieDetail(Long movieNum) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".detailView";
		return sqlSession.selectOne(statement, movieNum);
	}
	//영화 수정
	public Integer updateMovie(Movie movie) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();

		Integer result = sqlSession.update(namespace + ".updateMovie", movie);

		if (result > 0) {

			sqlSession.commit();// 트랜젝션 관리가 가능함
		} else {

			sqlSession.rollback();

		}
		return result;
	}
	//영화 삭제
	public Integer deleteMovie(Long movieNum) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();

		Integer result = sqlSession.delete(namespace + ".deleteMovie", movieNum);
		if (result > 0) {

			sqlSession.commit();// 트랜젝션 관리가 가능함
		} else {

			sqlSession.rollback();

		}
		return result;
	}

	////////////////////////////////// 극장///////////////////////////////////////////
	//극장 등록
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
	//극장 수정
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
	//극장 삭제
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

	//극장 목록
	public List<Theater> listTheater(Long movieNum) {

		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listTheater";
		return sqlSession.selectList(statement, movieNum);
	}
	//극장 등록 할 때 선택할  영화목록 출력
	public List<Movie> listMovie(Movie movie) {

		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listMovie";
		return sqlSession.selectList(statement, movie);
	}

	// 극장 상세
	public Theater theaterDetail(Long theaterNum) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".detailView";
		return sqlSession.selectOne(statement, theaterNum);
	}
	
	
	
	
	
	
	
	
	
	

}
