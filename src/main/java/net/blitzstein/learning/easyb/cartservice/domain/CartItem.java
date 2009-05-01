/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package net.blitzstein.learning.easyb.cartservice.domain;

/**
 *
 * @author jared
 */
public class CartItem {
    private long productId;
    private int quantity;
    private float price;

    public long getProductId() {
        return productId;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    

}
