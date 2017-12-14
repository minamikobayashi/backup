package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.ItemDTO;
import com.internousdev.ecsite.util.DBConnector;

public class StoreDAO {

	List<ItemDTO> itemDTOList=new ArrayList<ItemDTO>();

	public List<ItemDTO> selectAll(){
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();

		String sql="";
	}

}
