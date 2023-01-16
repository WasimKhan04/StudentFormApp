package com.studentapp_2.model;

import java.sql.ResultSet;

public interface DAOService {
	
	public void connectionDB();
	public boolean verifycredentials(String email,String password);
	public void saveReg(String name, String city, String email, long mobile);
	public ResultSet getAllReg();
	public void deleteByEmail(String email);
	public void updateReg(String email, String mobile);
	

}
