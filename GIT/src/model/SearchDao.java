package model;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SearchDao {
@Autowired
SqlSessionFactory factory;

public List<Map> searchList(String id){
	SqlSession session = factory.openSession();
	List<Map> list = new ArrayList<>();
	try{
		list = session.selectList("loginlog.select",id);
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		session.close();
	}
	return list;
}
	
}
