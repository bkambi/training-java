package com.excilys.cdb.DAOImpl;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.excilys.cdb.DAO.CompanyDAO;
import com.excilys.cdb.model.Company;

public class CompanyDAOImpl implements CompanyDAO {

	@Override
	public int creat(Company c) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Company getById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("finally")
	@Override
	public List<Company> getList() {
		
		List<Company> listReturn = new ArrayList<Company>();
		String query =" Select * FROM company";
		
		try {
			PreparedStatement ps = JDBCConnection.open().prepareStatement(query);
			ResultSet rs = ps.executeQuery(query);
			while(rs.next()) {
				Company c = new Company(rs.getLong("id"),rs.getString("name"));
				listReturn.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			return listReturn ;
		}
	}

	@Override
	public int update() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete() {
		// TODO Auto-generated method stub
		return 0;
	}

}
