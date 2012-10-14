package platinum.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCTest
{
	public static void main(String[] args)
	{
		Connection connection = null;
		try
		{
			String driverName = "oracle.jdbc.driver.OracleDriver";
			Class.forName(driverName);

			String serverName = "192.168.1.100";
			String portNumber = "1521";
			String sid = "ptdb";
			String url = "jdbc:oracle:thin:@" + serverName + ":" + portNumber + ":" + sid;
			String username = "PT_SYS";
			String password = "sys";
			connection = DriverManager.getConnection(url, username, password);
			
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery("select * from PT_SYS.PTT_USER");
			while (result.next())
			{
				System.out.println(result.getString("LOGIN_NAME"));
			}
			
			connection.close();
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}

}
