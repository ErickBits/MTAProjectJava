/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.usuario;
import java.util.List;

/**
 *
 * @author Cazaputas99
 */
public interface CRUD {
    public List Listar();
    public usuario List(int id);
    public boolean añadir(usuario per);
    public boolean editar(usuario per);
    public boolean eliminar(int id);
}
