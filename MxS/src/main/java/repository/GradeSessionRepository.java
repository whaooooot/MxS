package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.*;

@Repository
public class GradeSessionRepository extends AbstractRepository {
	private final String namespace = "repository.mapper.GradeMapper";
	
	/* 평점 */
	public List<GradeDTO> selectGrade(GradeDTO gradedto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectGradeByCondition";
		
		return sqlSession.selectList(statement, gradedto);
	}
	// -- con
	public Integer selectCount(GradeDTO gradedto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".gradeCountByCondition";
		
		return sqlSession.selectOne(statement, gradedto);
	}
	public List<MovieDTO> selectMovie(MovieDTO moviedto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectMovieByCondition";
		
		return sqlSession.selectList(statement, moviedto);
	}
	public Integer insertGradeWrite(GradeDTO gradedto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			System.out.println("1");
			
			String statement = namespace + ".insertGradeWrite";
			int result = sqlSession.insert(statement, gradedto);
			
			if (result > 0) {
				sqlSession.commit();
			}
			return result;
		} finally {
			sqlSession.close();
		}
		
	}

/*	public List<GradeDTO> selectMylist(GradeDTO grade) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectMylist";
		
		return sqlSession.selectList(statement, grade);
	}*/
}
