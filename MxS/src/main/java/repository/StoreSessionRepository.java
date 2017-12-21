package repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.StoreDTO;
import model.StoreoptDTO;

@Repository
public class StoreSessionRepository extends AbstractRepository {
	private final String namespace = "repository.mapper.StoreMapper";
	
	public List<StoreDTO> selectStore() { //상품출력
		
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectStore";
		List<StoreDTO> list = new ArrayList<StoreDTO>();
		
		try {
	
			list =  sqlSession.selectList(statement);
			//System.out.println(list.size());
			//System.out.println(list);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
		
	public Integer insertStore(StoreDTO storedto) { //상품등록
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		// Connection conn
		try {
			//System.out.println("1");
			String statement = namespace + ".insertStore";
			int result = sqlSession.insert(statement, storedto);
			if (result > 0) {

				sqlSession.commit();
			}
			return result;
		} finally {

			sqlSession.close();

		}
	}	
	
	public Integer deleteStore(int goodsNum) { //상품삭제
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();

		Integer result = sqlSession.delete(namespace + ".deleteStore", goodsNum);
		if(result>0) {
			
			sqlSession.commit();
		}else {
			
			sqlSession.rollback();
			
		}
		return result;
	}
	
	/*
	public Integer updateComment(Comment comment) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		
		Integer result = sqlSession.update(namespace + ".updateComment", comment);
		if(result>0) {
			
			sqlSession.commit();//트랜젝션 관리가 가능함
		}else {
			
			sqlSession.rollback();
			
		}
		return result;
	}
	
	
	
	
	*/
	
	public List<StoreoptDTO> selectStoreopt() { //옵션출력
		
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".selectoptStore";
		List<StoreoptDTO> list = new ArrayList<StoreoptDTO>();
		
		try {
	
			list =  sqlSession.selectList(statement);
			//System.out.println(list.size());
			//System.out.println(list);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public Integer insertStoreopt(StoreoptDTO storeoptdto) { //상품등록
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		// Connection conn
		try {
			//System.out.println("1");
			String statement = namespace + ".insertStoreopt";
			int result = sqlSession.insert(statement, storeoptdto);
			if (result > 0) {

				sqlSession.commit();
			}
			return result;
		} finally {

			sqlSession.close();

		}
	}	
	
	
	
	
	
	

}
