
package Config;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion {
    private final String baseDatos = "mta";
    private final String servidor = "jdbc:mysql://localhost:3306/" + baseDatos;
    private final String usuario = "root";
    private final String clave = "";
    
    public Connection conectar(){
        Connection cn = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(servidor, usuario, clave);
        }catch(Exception e){
            System.out.println("Error al conectar" + e.getMessage());
        }
        return cn;
    }
            
}
