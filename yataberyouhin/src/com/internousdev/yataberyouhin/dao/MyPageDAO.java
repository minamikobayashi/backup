package com.internousdev.yataberyouhin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.yataberyouhin.dto.MyPageDTO;
import com.internousdev.yataberyouhin.util.DBConnector;

public class MyPageDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();

	public ArrayList<MyPageDTO> getMyPageUserInfo() throws SQLException {
		ArrayList<MyPageDTO> myPageDTO = new ArrayList<MyPageDTO>();

		String sql = "SELECT user_id,family_name,first_name,family_name_kana,first_name_kana,sex,email FROM user_info";
		
		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, );
		}

}
