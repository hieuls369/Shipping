/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.sql.Date;

/**
 *
 * @author admin
 */
public class Product {

    private String ID;
    private String name;
    private String catID;
    private String img;
    private int price;
    private int quantity;
    private String describe;
    private String status;
    private String date;
    private Categories c;

    public Product() {
    }

    public Product(String ID, String name, String catID, String img, int price, int quantity, String describe, String status, String date, Categories c) {
        this.ID = ID;
        this.name = name;
        this.catID = catID;
        this.img = img;
        this.price = price;
        this.quantity = quantity;
        this.describe = describe;
        this.status = status;
        this.date = date;
        this.c = c;
    }

    
    public Product(String ID, String name, String catID, String img, int price, int quantity, String describe, String status, String date) {
        this.ID = ID;
        this.name = name;
        this.catID = catID;
        this.img = img;
        this.price = price;
        this.quantity = quantity;
        this.describe = describe;
        this.status = status;
        this.date = date;
    }
    
    public Categories getC() {
        return c;
    }

    public void setC(Categories c) {
        this.c = c;
    }

    

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCatID() {
        return catID;
    }

    public void setCatID(String catID) {
        this.catID = catID;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

}
