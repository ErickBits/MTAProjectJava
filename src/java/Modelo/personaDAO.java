/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Config.ConexionCrud;
import Interfaces.CRUD;
import Modelo.usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class personaDAO implements CRUD{
    ConexionCrud cn=new ConexionCrud();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    usuario u = new usuario();
    @Override
    public java.util.List Listar() {
        ArrayList<usuario>list=new ArrayList<>();
        String sql="select * from usuario";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                usuario usu=new usuario();
                usu.setId_usuario(rs.getInt("id_usu"));
                usu.setNombres(rs.getString("nombre_usu"));
                usu.setNombreUsuario(rs.getString("nombre_cuenta"));
                usu.setApellidos(rs.getString("apellidos_usu"));
                usu.setClave(rs.getString("contraseña"));
                usu.setTelefono_usu(rs.getString("telefono_usu"));
                usu.setCorreo(rs.getString("correo_usu"));
                usu.setDocumento(rs.getString("documento"));
                usu.setEstado(rs.getBoolean("ESTADO"));
                
                
                
                list.add(usu);
            }
        } catch (Exception e) {
        
        }
        return list;
    }

    @Override
    public usuario List(int id) {
        String sql="select * from usuario where id_usu = " + id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                u.setId_usuario(rs.getInt("id_usu"));
                u.setNombres(rs.getString("nombre_usu"));
                u.setNombreUsuario(rs.getString("nombre_cuenta"));
                u.setApellidos(rs.getString("apellidos_usu"));
                u.setClave(rs.getString("contraseña"));
                u.setTelefono_usu(rs.getString("telefono_usu"));
                u.setCorreo(rs.getString("correo_usu"));
                u.setDocumento(rs.getString("documento"));
                u.setEstado(rs.getBoolean("ESTADO"));
                u.setCargo(rs.getObject(sql, cargo.class));
                
            }
        } catch (Exception e) {
        
        }
        return u;
    }


    @Override
    public boolean añadir(usuario usu) {
        String sql="insert into usuario (nombre_usu,nombre_cuenta,apellidos_usu,contraseña,telefono_usu,correo_usu,documento)values('"+usu.getNombres()+"','"+usu.getNombreUsuario()+"','"+usu.getApellidos()+"','"+usu.getClave()+"','"+usu.getTelefono_usu()+"','"+usu.getCorreo()+"','"+usu.getDocumento()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean editar(usuario usu) {
         String sql = "update usuario set nombre_usu = '"+usu.getNombres()+"', nombre_cuenta = '"+usu.getNombreUsuario()+"',apellidos_usu = '"+usu.getApellidos()+"',contraseña = '"+usu.getClave()+"',telefono_usu = '"+usu.getTelefono_usu()+"',correo_usu = '"+usu.getCorreo()+"', documento = '"+usu.getDocumento()+"' ";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            
        }
        return true;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from usuario where id_usu = " + id;
    
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            
        }
        return true;
    }

   
    
}

    
