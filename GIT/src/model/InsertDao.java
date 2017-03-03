package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InsertDao {
	@Autowired
	SqlSessionFactory factory;

	public int InsertID(String id) {
		SqlSession session = factory.openSession();
		int num = 0;
		try{
		num = session.insert("loginInsert.insert", id);
		session.commit();
		}catch (Exception e){
			System.out.println("태영 오류");
			e.printStackTrace();
		}finally {
			session.close();
		}
		return num;
	}

}
