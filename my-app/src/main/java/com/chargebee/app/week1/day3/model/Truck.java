package com.chargebee.app.week1.day3.model;

import com.chargebee.app.week1.utilities.*;
import com.chargebee.app.week1.day3.model.*;

public class Truck extends Car{
    private Integer weight;
    public Truck(){

    }
    public Integer getWeight(){
        return weight;
    }
    public void setWeight(Integer weight){
        this.weight = weight;
    }
    public Integer getSalePrice(){
        return salePrice;
    }
    @Override
    public void setSalePrice(Integer salePrice){
        this.salePrice = salePrice;
    }
}