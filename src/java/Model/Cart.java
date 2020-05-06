/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Item;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class Cart {
    private ArrayList<Item> cart;

    public Cart() {
        cart = new ArrayList<Item>();
    }
    private Item getItemById(String id){
        for(Item i:cart){
            if(i.getProduct().getID().equals(id))
                return i;
        }
        return null;
    }
    
    public void addItem(Item t) {
        //nếu có món này trong giỏ thì cập nhật lại số lượng
        if (getItemById(t.getProduct().getID())!=null) {
            Item m = getItemById(t.getProduct().getID());
            m.setQuantity(m.getQuantity()+ t.getQuantity());
        } else//nếu chưa có món này trong giỏ thì thêm mới
            cart.add(t);
    }
   
    public void deleteItem(Item t) {
        if (getItemById(t.getProduct().getID())!=null) {
            cart.remove(getItemById(t.getProduct().getID()));
        }
    }

    public ArrayList<Item> getCart() {
        return cart;
    }
    
    public double totalMoney(){
        double tt=0;
        for(Item i:cart){
            tt+=i.getProduct().getPrice()*i.getQuantity();
        }
        return tt;
    }
}
