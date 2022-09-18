package pms.a01_Yeji.a03_DAO;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pms.a01_Yeji.a04_VO.User;

@Repository
public interface UserDao {
/*
	@Autowired
	SqlSessionTemplate sqlSession;
	
	private final String NS = "userMapper.";
	
	public User selectUser(String user) {
		return sqlSession.selectOne(NS + "selectUser", user);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<User> selectUserList() {
		return (ArrayList<User>)(Object)sqlSession.selectList(NS + "selectUserList");
	}
*/

}
