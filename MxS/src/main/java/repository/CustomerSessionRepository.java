package repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.*;

@Repository
public class CustomerSessionRepository extends AbstractRepository {
	private final String namespace = "repository.mapper.CustomerMapper";

	/* 메인 */
	public List<CustomerDTO> selectCustomer(CustomerDTO custmoerdto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectCustomerByCondition";
		
		return sqlSession.selectList(statement, custmoerdto);
	}
	
	/* 자주 찾는 질문 */
	public List<CustomerDTO> selectQna(CustomerDTO custmoerdto) { // 전체
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectQnaByCondition";
		
		return sqlSession.selectList(statement, custmoerdto);
	}

	// -- tab
	public List<CustomerDTO> selectQnaList(CustomerDTO custmoerdto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectQnaList";
		 
		 return sqlSession.selectList(statement, custmoerdto);
	}
	
	// -- count
	public Integer selectCount(CustomerDTO custmoerdto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectCountByCondition";
		
		return sqlSession.selectOne(statement, custmoerdto);
	}

	
	/* 공지/뉴스 */
	public List<CustomerDTO> selectNotice(CustomerDTO custmoerdto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectNoticeByCondition";
		
		return sqlSession.selectList(statement, custmoerdto);
	}

	// -- tab
	public List<CustomerDTO> selectNoticeList(CustomerDTO custmoerdto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectNoticeList";
		 
		 return sqlSession.selectList(statement, custmoerdto);
	}
	
	
	/* 이메일 문의 */
	public Map<String, Object> selectEmail(MemberDTO memberdto) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectEmailMember";
		
		return sqlSession.selectOne(statement, memberdto);
	}

}
