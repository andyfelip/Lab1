/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unipiloto.metodos.hello;

import java.util.Date;

/**
 *
 * @author Andres Felipe Avila
 */
public class NameHandler {

    private String nombre;
    private String apellido;
    private String nacimiento;

    public NameHandler(String Nombre, String Apellido, String naDate) {

        this.nombre = Nombre;
        this.apellido = Apellido;
        this.nacimiento = naDate; 

    }

    public NameHandler() {

        nombre = null;
        apellido = null;
        nacimiento=null; 

    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String Nombre) {
        this.nombre = Nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String Apellido) {
        this.apellido = Apellido;
    }

    public String getNacimiento() {
        return nacimiento;
    }

    public void setNacimiento(String nacimiento) {
        this.nacimiento = nacimiento;
    }

   
    
    

}
