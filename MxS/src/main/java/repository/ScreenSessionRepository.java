
package repository;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Movie;
import model.Theater;
import model.Screen;





@Repository
public class ScreenSessionRepository extends AbstractRepository {
	private final String namespace = "repository.mapper.ScreenMapper";

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

	public Integer deleteTheater(String screenName) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();

		Integer result = sqlSession.delete(namespace + ".deleteScreen", screenName);
		if (result > 0) {

			sqlSession.commit();
		} else {

			sqlSession.rollback();

		}
		return result;
	}

	// 게시글 전체 목록
	

    public List<Screen> listScreen(Long theaterNum, Long movieNum) {
    	
    	SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listScreen";
        return sqlSession.selectList(statement, theaterNum, movieNum);
    }
    
/*    public List<Theater> listTheater(Theater tt) {
    	
    	SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listTheater";
        return sqlSession.selectList(statement, tt);
    }*/
	
/*	
    public List<Movie> listMovie(Movie movie) {
    	
    	SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listMovie";
        return sqlSession.selectList(statement,movie);
    }*/
	
	//극장 상세보기
	public Screen screenDetail(String screenName) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".detailView";
		return sqlSession.selectOne(statement, screenName);
	}
	
	
	

}
