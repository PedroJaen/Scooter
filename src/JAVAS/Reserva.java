/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
CREATE TABLE reserva(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT REFERENCES cliente(id) NOT NULL,
    id_scooter INT REFERENCES scooter(id) NOT NULL,
    dia DATE NOT NULL,
    hora_inicio INT NOT NULL,
    hora_fin INT NOT NULL
);
 */
package JAVAS;

import java.util.Date;

/**
 *
 * @author Naga
 */
public class Reserva {
    
    private int id;
    private int id_usuario;
    private int id_scooter;
    private Date dia;
    private int hora_inicio;
    private int hora_fin;

    public Reserva() {
    }

    public Reserva(int id, int id_usuario, int id_scooter, Date dia, int hora_inicio, int hora_fin) {
        this.id = id;
        this.id_usuario = id_usuario;
        this.id_scooter = id_scooter;
        this.dia = dia;
        this.hora_inicio = hora_inicio;
        this.hora_fin = hora_fin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_scooter() {
        return id_scooter;
    }

    public void setId_scooter(int id_scooter) {
        this.id_scooter = id_scooter;
    }

    public Date getDia() {
        return dia;
    }

    public void setDia(Date dia) {
        this.dia = dia;
    }

    public int getHora_inicio() {
        return hora_inicio;
    }

    public void setHora_inicio(int hora_inicio) {
        this.hora_inicio = hora_inicio;
    }

    public int getHora_fin() {
        return hora_fin;
    }

    public void setHora_fin(int hora_fin) {
        this.hora_fin = hora_fin;
    }
    
    
}
