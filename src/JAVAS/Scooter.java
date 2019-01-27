/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
CREATE TABLE scooter(
    id INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(20) NOT NULL,
    cilindrada VARCHAR(20) NOT NULL
);
 */
package JAVAS;

/**
 *
 * @author Naga
 */
public class Scooter {
    
    private int id;
    private String modelo;
    private String cilindrada;

    public Scooter() {
    }

    public Scooter(int id, String modelo, String cilindrada) {
        this.id = id;
        this.modelo = modelo;
        this.cilindrada = cilindrada;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getCilindrada() {
        return cilindrada;
    }

    public void setCilindrada(String cilindrada) {
        this.cilindrada = cilindrada;
    }
    
    
}
