/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Stephano Sanchez
 */
public class usuario {
    public int id_usuario;
    public String nombres;
    public String apellidos;
    public String nombreUsuario;
    public String clave;
    public String telefono_usu;
    public String correo;
    public String documento;
    public boolean estado;
    public cargo cargo;
    public int rol;
    
    public usuario(){
        
    }

    public usuario(int id_usuario, String nombres, String apellidos, String nombreUsuario, String clave, String telefono_usu, String correo, String documento, boolean estado, cargo cargo, int rol) {
        this.id_usuario = id_usuario;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.nombreUsuario = nombreUsuario;
        this.clave = clave;
        this.telefono_usu = telefono_usu;
        this.correo = correo;
        this.documento = documento;
        this.estado = estado;
        this.cargo = cargo;
        this.rol = rol;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getTelefono_usu() {
        return telefono_usu;
    }

    public void setTelefono_usu(String telefono_usu) {
        this.telefono_usu = telefono_usu;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public boolean getEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public cargo getCargo() {
        return cargo;
    }

    public void setCargo(cargo cargo) {
        this.cargo = cargo;
    }


    
    
    
}
