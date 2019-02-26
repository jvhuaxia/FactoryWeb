package com.jvhuaxia.factory.pojo;

import java.time.LocalDateTime;

public class Product {
    private int id;
    private ProductType productType;
    private String img;
    private String proName;
    private String des;
    private int his;
    private LocalDateTime addDate;

    public Product(int id, ProductType productType, String img, String proName, String des, int his, LocalDateTime addDate) {
        this.id = id;
        this.productType = productType;
        this.img = img;
        this.proName = proName;
        this.des = des;
        this.his = his;
        this.addDate = addDate;
    }

    public Product(ProductType productType, String img, String proName, String des, int his, LocalDateTime addDate) {
        this.productType = productType;
        this.img = img;
        this.proName = proName;
        this.des = des;
        this.his = his;
        this.addDate = addDate;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ProductType getProductType() {
        return productType;
    }

    public void setProductType(ProductType productType) {
        this.productType = productType;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public int getHis() {
        return his;
    }

    public void setHis(int his) {
        this.his = his;
    }

    public LocalDateTime getAddDate() {
        return addDate;
    }

    public void setAddDate(LocalDateTime addDate) {
        this.addDate = addDate;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", productType=" + productType.getId() +
                ", img='" + img + '\'' +
                ", proName='" + proName + '\'' +
                ", des='" + des + '\'' +
                ", his=" + his +
                ", addDate=" + addDate +
                '}';
    }
}
