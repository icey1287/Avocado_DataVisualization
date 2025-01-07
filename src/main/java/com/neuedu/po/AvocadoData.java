package com.neuedu.po;

import lombok.Data;

import java.util.Date;
@Data
public class AvocadoData {
    private Date date;
    private Double averagePrice;
    private Double totalVolume;
    private Double variety4046;
    private Double variety4225;
    private Double variety4770;
    private Integer totalBags;
    private Integer smallBags;
    private Integer largeBags;
    private Integer xLargeBags;
    private String type;
    private Integer year;
    private String region;

    // Getters and Setters
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Double getAveragePrice() {
        return averagePrice;
    }

    public void setAveragePrice(Double averagePrice) {
        this.averagePrice = averagePrice;
    }

    public Double getTotalVolume() {
        return totalVolume;
    }

    public void setTotalVolume(Double totalVolume) {
        this.totalVolume = totalVolume;
    }

    public Double getVariety4046() {
        return variety4046;
    }

    public void setVariety4046(Double variety4046) {
        this.variety4046 = variety4046;
    }

    public Double getVariety4225() {
        return variety4225;
    }

    public void setVariety4225(Double variety4225) {
        this.variety4225 = variety4225;
    }

    public Double getVariety4770() {
        return variety4770;
    }

    public void setVariety4770(Double variety4770) {
        this.variety4770 = variety4770;
    }

    public Integer getTotalBags() {
        return totalBags;
    }

    public void setTotalBags(Integer totalBags) {
        this.totalBags = totalBags;
    }

    public Integer getSmallBags() {
        return smallBags;
    }

    public void setSmallBags(Integer smallBags) {
        this.smallBags = smallBags;
    }

    public Integer getLargeBags() {
        return largeBags;
    }

    public void setLargeBags(Integer largeBags) {
        this.largeBags = largeBags;
    }

    public Integer getXLargeBags() {
        return xLargeBags;
    }

    public void setXLargeBags(Integer xLargeBags) {
        this.xLargeBags = xLargeBags;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }
}
