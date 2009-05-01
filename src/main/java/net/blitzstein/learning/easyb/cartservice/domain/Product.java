/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.blitzstein.learning.easyb.cartservice.domain;

/**
 *
 * @author jared
 */
public class Product {

    private long id;
    private String name;
    private String shortDescription;
    private String description;
    private float price;

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Product() {
    }

    public Product(long id, String name, String description) {
        this.id = id;
        this.name = name;
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }
}
