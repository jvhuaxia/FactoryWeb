package com.jvhuaxia.factory.pojo;

public class ProductType {
    private int id;
    private String name;
    private ProductType fatherType;
    private int order;

    public ProductType() {
    }

    public ProductType(int id) {
        this.id = id;
    }


    public ProductType(int id, String name, ProductType fatherType, int order) {
        this.id = id;
        this.name = name;
        this.fatherType = fatherType;
        this.order = order;
    }

    public ProductType(String name, ProductType fatherType, int order) {
        this.name = name;
        this.fatherType = fatherType;
        this.order = order;
    }

    public ProductType(String name, int fatherId, int order) {
        this.name = name;
        this.order = order;
        ProductType fatherType = new ProductType();
        fatherType.setId(fatherId);
        this.fatherType = fatherType;
    }

    public ProductType(int id, String name, int fatherId, int order) {
        this.id = id;
        this.name = name;
        this.order = order;
        ProductType fatherType = new ProductType();
        fatherType.setId(fatherId);
        this.fatherType = fatherType;
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

    public ProductType getFatherType() {
        return fatherType;
    }

    public void setFatherType(ProductType fatherType) {
        this.fatherType = fatherType;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }


}
