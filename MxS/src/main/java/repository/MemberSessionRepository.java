package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Member;

@Repository
public class MemberSessionRepository extends AbstractRepository {
	private final String namespace = "repository.mapper.MemberMapper";
	
	public Integer insertMember(Member member) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".insertMember";
			int result = sqlSession.insert(statement, member);
			
			if (result > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			return result;
		}finally {
			sqlSession.close();
		}
	}
	public int IdCheck(String memberId) {

	      SqlSession sqlSession = this.getSqlSessionFactory().openSession();
	      String statement = namespace + ".checkId";
	      try {
	         int result = sqlSession.selectOne(statement, memberId);
	         //System.out.println(result);
	         return result;
	         
	      } catch (Exception e) {
	    	 //System.out.println("에러");
	         e.printStackTrace();
	         return 0;
	      }finally {
				sqlSession.close();
			}
	   }
	public Member logincheck(Member member) {

	      SqlSession sqlSession = this.getSqlSessionFactory().openSession();
	      String statement = namespace + ".logincheck";
	      
	      try {
	    	 System.out.println(member.getMemberId());
	    	 Member result = sqlSession.selectOne(statement, member);
	         System.out.println(result.getMemberId());
	         return result;
	         
	      } catch (Exception e) {
	    	 System.out.println("에러");
	         e.printStackTrace();
	         return null;
	      }
	      
	   }
	
}
