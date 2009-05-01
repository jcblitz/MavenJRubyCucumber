/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package net.blitzstein.learning.easyb.cartservice.domain;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jared
 */
public class Cart {
    private List<CartItem> products = new ArrayList();

    public List getProducts() {
        return products;
    }

    public void setProducts(List products) {
        this.products = products;
    }

    public void addToCart(CartItem cartItem) {
        this.products.add(cartItem);
    }

    public float getSubtotal() {
        float subtotal = 0;

        for (CartItem cartItem : products) {
            subtotal+=(cartItem.getQuantity() * cartItem.getPrice());
        }
        
        return subtotal;

    }

    
}
