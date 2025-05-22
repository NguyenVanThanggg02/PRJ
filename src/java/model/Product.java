package model;

import java.sql.Date;

public class Product {

    private int id;
    private String name;
    private int quantity;
    private double Price;
    private double discount;
    Date createDate;
    String img;
    String desc;

    public Product() {
    }

    public Product(int id, String name, int quantity, double Price, double discount, Date createDate, String img, String desc) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.Price = Price;
        this.discount = discount;
        this.createDate = createDate;
        this.img = img;
        this.desc = desc;
    }

    public Product(int id, String name, int quantity, double Price, double discount, String img, String desc) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.Price = Price;
        this.discount = discount;
        this.img = img;
        this.desc = desc;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

}
