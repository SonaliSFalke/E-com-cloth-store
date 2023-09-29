
package com.mycompany.e.com.entities;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    private int categoryId;
    private String categoryTitle;
    private String categoryDiscription;
    
    @OneToMany(mappedBy = "category")
    private List<Product> products = new ArrayList<>();
    public Category() {
    }

    public Category(int categoryId, String categoryTitle, String categoryDiscription, List<Product> products) {
        this.categoryId = categoryId;
        this.categoryTitle = categoryTitle;
        this.categoryDiscription = categoryDiscription;
         this.products = products;
    }

    public Category(String categoryTitle, String categoryDiscription, List<Product> products) {
        this.categoryTitle = categoryTitle;
        this.categoryDiscription = categoryDiscription;
         this.products = products;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryTitle() {
        return categoryTitle;
    }

    public void setCategoryTitle(String categoryTitle) {
        this.categoryTitle = categoryTitle;
    }

    public String getCategoryDiscription(String description) {
        return categoryDiscription;
    }

    public void setCategoryDiscription(String categoryDiscription) {
        this.categoryDiscription = categoryDiscription;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Category{" + "categoryId=" + categoryId + ", categoryTitle=" + categoryTitle + ", categoryDiscription=" + categoryDiscription + '}';
    }
    
    
    
}
