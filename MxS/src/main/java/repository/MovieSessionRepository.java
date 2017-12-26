package repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import model.Movie;





@Repository
public class MovieSessionRepository extends AbstractRepository {
	private final String namespace = "repository.mapper.MovieMapper";
	
	
	public List<Movie> listAll(String searchOption, String keyword) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".listAll";
		// 검색옵션, 키워드 맵에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);

		return sqlSession.selectList(statement, map);
			

		
	}
	
	//레코스 갯수
	public int countArticle(String searchOption, String keyword) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".countArticle";
		// 검색옵션, 키워드 맵에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectOne(statement, map);
	}
	
	
	public void insertMovie(Movie movie) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
			String statement = namespace + ".insertMovie";      
			int result = sqlSession.insert(statement, movie);
			//System.out.println("a");


			if (result > 0) {

				sqlSession.commit();
			}
		} finally {

			sqlSession.close();

		}
	    

	}
	//파일업로드 처리
	public void addAttach(String fullName) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		try {
		String statement = namespace + ".addAttach";
		
		int result = sqlSession.insert(statement, fullName);
		if (result > 0) {
	
			sqlSession.commit();
			}
				}finally {
	
				sqlSession.close();
	
			}
			
	}
	

	//영화 상세보기
	public Movie movieDetail(Long movieNum) throws Exception {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".detailView";
		return sqlSession.selectOne(statement, movieNum);
	}

	

	
	public Integer updateAttach(String fullName, Long movieNum) {
	    Map<String, Object> map = new HashMap<String, Object>();
	    SqlSession sqlSession = this.getSqlSessionFactory().openSession();
	    String statement = namespace + ".updateAttach";
	    map.put("fullName", fullName);
	    map.put("movieNum", movieNum);
	    Integer result = sqlSession.update(statement, map);
		if(result>0) {
			
			sqlSession.commit();//트랜젝션 관리
		}else {
			
			sqlSession.rollback();
			
		}
		return result;
	    
	}

	
	// 게시글 첨부파일 삭제처리
	public Integer deleteFile(String fullname) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		String statement = namespace + ".deleteAttach";	
		Integer result = sqlSession.delete(statement, fullname);
		if(result>0) {
			
			sqlSession.commit();//트랜젝션 관리가 가능함
		}else {
			
			sqlSession.rollback();
			
		}
		return result;
	
	}
	
	
	
	
	public Integer updateMovie(Movie movie) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		
		Integer result = sqlSession.update(namespace + ".updateMovie", movie);


		/*String[] files = movie.getFiles();*/ // 첨부파일 배열
		// 첨부파일이 없으면 종료
/*		if(files == null) return result;
		// 첨부파일들의 정보를 tbl_attach 테이블에 insert
		for(String name : files){
			updateAttach(name, movie.getMovieNum());
		}*/
		
		
		if(result>0) {
			
			sqlSession.commit();//트랜젝션 관리가 가능함
		}else {
			
			sqlSession.rollback();
			
		}
		return result;
	}
	
	public Integer deleteMovie(Long movieNum) {
		SqlSession sqlSession = this.getSqlSessionFactory().openSession();
		
		Integer result = sqlSession.delete(namespace + ".deleteMovie", movieNum);
		if(result>0) {
			
			sqlSession.commit();//트랜젝션 관리가 가능함
		}else {
			
			sqlSession.rollback();
			
		}
		return result;
	}
	
	
	
	
	
	
	
	

}
