package Config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class DBConfig {
	protected Connection con;
	protected PreparedStatement stmt;
	protected ResultSet rs;
	
	public DBConfig() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumniproject","root","root");
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
		}
	}
}
