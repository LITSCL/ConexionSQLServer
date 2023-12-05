package cl.inacap.conexionsqlserver.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class BDUtil {
	private final String servidor = "localhost";
	private final String usuario = "sa";
	private final String clave = "root";
	private final String baseDeDatos = "dbconexionsqlserver";
	private final int puerto = 1433;
	private Connection conexion;
	
	public boolean conectar() {
		try {
			String url = "jdbc:sqlserver://" + servidor + ";port=" + puerto + ";database=" + baseDeDatos; 
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			this.conexion = DriverManager.getConnection(url, usuario, clave); 
			return true;
		} catch (Exception ex) {
			return false;
		}
	}
	
	public Connection getConexion() {
		return conexion;
	}

	public void desconectar() {
		try {
			this.conexion.close();	
		} catch (Exception ex) {
			
		}
	}
} 
