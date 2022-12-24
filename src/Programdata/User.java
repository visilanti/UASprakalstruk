/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Programdata;

/**
 *
 * @author HP
 */
public class User {
    private int id;
    private String nama;
    private String umur;
    private String telepon;
    private String alamat;
    
    public User (int Id, String Nama, String Umur, String Telepon, String Alamat){
        this.id = Id;
        this.nama = Nama;
        this.umur = Umur;
        this.telepon = Telepon;
        this.alamat = Alamat;
    }
    
    public int getId(){
        return id;
    }
    
    public String getnama(){
        return nama;
    }
    
    public String getumur(){
        return umur;
    }
    
    public String gettelepon(){
        return telepon;
    }
    
    public String getalamat(){
        return alamat;
    }
    
    
}
