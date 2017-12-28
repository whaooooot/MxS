package repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.*;

@Repository
public class MovieAdminSessionRepository extends AbstractRepository {

	private final String namespace = "repository.mapper.MovieAdminMapper";

	////////////////////////////////// 영화///////////////////////////////////////////

	// 영화목록
	public List<Movie> movieList(String searchOption, String keyword) throws Exception {

		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".movieList";
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

	// 영화등록
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

	// 영화 상세
	public Movie movieDetailView(Long movieNum) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".movieDetailView";
		return sqlSession.selectOne(statement, movieNum);
	}

	// 영화 수정
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

	// 영화 삭제
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
	// 극장 등록
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

	// 극장 수정
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

	// 극장 삭제
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

	// 극장 목록
	public List<Theater> listTheater(Long movieNum) {

		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listTheater";
		return sqlSession.selectList(statement, movieNum);
	}

	// 극장 등록 할 때 선택할 영화목록 출력
	public List<Movie> listMovie(Movie movie) {

		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listMovie";
		return sqlSession.selectList(statement, movie);
	}

	// 극장 상세
	public Theater theaterDetailView(Long theaterNum) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".theaterDetailView";
		return sqlSession.selectOne(statement, theaterNum);
	}

	////////////////////////////////// 상영관///////////////////////////////////////////
	// 상영관 등록
	public void insertScreen(Screen screen) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".insertScreen";
			int result = sqlSession.insert(statement, screen);
			// System.out.println("a");

			if (result > 0) {

				sqlSession.commit();
			}
		} finally {

			sqlSession.close();

		}

	}

	// 상영관 수정
	public Integer updateScreen(Screen screen) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();

		Integer result = sqlSession.update(namespace + ".updateScreen", screen);

		if (result > 0) {

			sqlSession.commit();
		} else {

			sqlSession.rollback();

		}
		return result;
	}

	// 상영관 상세
	public Integer deleteScreen(String screenName) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();

		Integer result = sqlSession.delete(namespace + ".deleteScreen", screenName);
		if (result > 0) {

			sqlSession.commit();
		} else {

			sqlSession.rollback();

		}
		return result;
	}

	// 상영관 목록

	public List<Screen> listScreen(Long theaterNum, Long movieNum) {

		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listScreen";
		Screen screen = new Screen();
		screen.setTheaterNum(theaterNum);
		screen.setMovieNum(movieNum);
		return sqlSession.selectList(statement, screen);
	}

	// 상영관 상세보기
	public Screen screenDetailView(String screenName) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".detailView";
		return sqlSession.selectOne(statement, screenName);
	}

	////////////////////////////////// 상영시간표///////////////////////////////////////////
	// 상영관 등록
	public void timetableInsert(TimeTable timetable) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".timetableInsert";
			int result = sqlSession.insert(statement, timetable);
			// System.out.println("a");

			if (result > 0) {

				sqlSession.commit();
			}
		} finally {

			sqlSession.close();

		}

	}

	// 상영관 수정
	public Integer timetableUpdate(TimeTable timetable) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();

		Integer result = sqlSession.update(namespace + ".timetableUpdate", timetable);

		if (result > 0) {

			sqlSession.commit();
		} else {

			sqlSession.rollback();

		}
		return result;
	}

	// 상영관 상세
	public Integer timetableDelete(String timeStart) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();

		Integer result = sqlSession.delete(namespace + ".timetableDelete", timeStart);
		if (result > 0) {

			sqlSession.commit();
		} else {

			sqlSession.rollback();

		}
		return result;
	}

	// 상영관 목록

	public List<Screen> listTimetable(TimeTable timatable) {

		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		System.out.println("listTimetable");
		String statement = namespace + ".listTimetable";
		return sqlSession.selectList(statement, timatable);
	}

	// 상영관 상세보기
	public Screen timetableDetailView(String timeStart) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".timetableDetailView";
		return sqlSession.selectOne(statement, timeStart);
	}

}