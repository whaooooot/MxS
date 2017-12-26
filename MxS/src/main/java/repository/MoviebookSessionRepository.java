package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Movie;
import model.Screen;
import model.Theater;
import model.TimeTable;

@Repository
public class MoviebookSessionRepository extends AbstractRepository  {
	private final String namespace = "repository.mapper.MoviebookMapper";
	
	public List<Movie> selectReserve() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".reserve";
			return sqlSession.selectList(statement);
		}finally {
			sqlSession.close();
		}
	}
	public List<Movie> selectGanada() {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".ganada";
			return sqlSession.selectList(statement);
		}finally {
			sqlSession.close();
		}
	}
	public List<Theater> selectTeater(Theater theater){
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".teater";
			return sqlSession.selectList(statement, theater);
		}finally {
			sqlSession.close();
		}
	}
	public List<TimeTable> theaterDate(Screen screen){
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".teaterDate";
			System.out.println(sqlSession.selectList(statement, screen));
			return sqlSession.selectList(statement, screen);
		}finally {
			sqlSession.close();
		}
	}
	public List<TimeTable> getTime(TimeTable timeTable){
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".getTime";
			return sqlSession.selectList(statement, timeTable);
		}finally {
			sqlSession.close();
		}
	}
	public List<Screen> getScreen(TimeTable timeTable){
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".getScreen";
			return sqlSession.selectList(statement, timeTable);
		}finally {
			sqlSession.close();
		}
	}
}
