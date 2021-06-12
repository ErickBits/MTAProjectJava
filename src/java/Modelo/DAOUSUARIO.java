package Modelo;

import Config.conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DAOUSUARIO extends conexion {
    public usuario identificar(usuario user) throws Exception{
        usuario usu = null;
        conexion con;
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;
        String sql = "SELECT U.id_usu, C.nombre_rol FROM USUARIO U "
                + "INNER JOIN rol C ON U.IDCARGO = C.IDCARGO "
                + "WHERE U.ESTADO = 1 AND U.nombre_cuenta = '" + user.getNombreUsuario() + "' "
                + "AND U.contraseña = '"+ user.getClave() + "'";
        con = new conexion();
        try{
            cn = con.conectar();
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            if(rs.next() == true){
                usu = new usuario();
                usu.setId_usuario(rs.getInt("id_usu"));
                usu.setNombreUsuario(user.getNombreUsuario());
                usu.setCargo(new cargo());
                usu.getCargo().setNombreCargo(rs.getString("nombre_rol"));
                usu.setEstado(true);
            }
        }catch(Exception e){
            System.out.println("Error" + e.getMessage());
        }finally{
            if (rs !=null && rs.isClosed() == false){
                rs.close();
            }
            rs = null;
            if(st!= null && st.isClosed() == false){
                st.close();
                
            }
            st = null;
            if(cn != null & cn.isClosed() == false){
                cn.close();
                
            }
            cn = null;
        }
        return usu;
    }
}
