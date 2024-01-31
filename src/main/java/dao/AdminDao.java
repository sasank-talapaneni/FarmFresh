package dao;

import java.sql.*;
import model.*;

public class AdminDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public AdminDao(Connection con) {
		this.con = con;
	}
	
	public Admin adminLogin(String email, String password) {
		Admin admin = null;
        try {
            query = "select * from admin_table where email=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if(rs.next()){
            	admin = new Admin();
            	admin.setId(rs.getInt("id"));
            	admin.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return admin;
    }
}