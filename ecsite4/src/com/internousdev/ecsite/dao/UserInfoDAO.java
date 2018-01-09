package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class UserInfoDAO {
	public DBConnector dbconnector = new DBConnector();
	public Connection connection = null;
	
	/**
	 * ユーザー情報を新規登録
	 * @param userInfoDTO
	 * @return result
	 * @throws SQLException
	 */
	
	public boolean registerUser(userInfoDTO userInfoDTO) throws SQLException {
		boolean result = false;
		int updateCount = 0;
		
		String sql = "INSERT INTO user_info(user_id,password,family_name,first_name,sex,email,insert_date)"
				+ "VALUES(?,?,?,?,?,?,NOW())";
		
		try{
			connection = dbconnector.getConnection();
			PreparedStatement preparedstatement = connection.prepareStatement(sql);
			preparedstatement.setString(1, userInfoDTO.getUserId());
		}
	}

}
