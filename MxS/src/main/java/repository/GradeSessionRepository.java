package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.*;

@Repository
public class GradeSessionRepository extends AbstractRepository {
	private final String namespace = "repository.mapper.GradeMapper";
	
	/* 평점 */
	public List<GradeDTO> selectGrade(GradeDTO grade) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectGradeByCondition";
		
		return sqlSession.selectList(statement, grade);
	}

	public List<GradeDTO> selectMylist(GradeDTO grade) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectMylist";
		
		return sqlSession.selectList(statement, grade);
	}
}
