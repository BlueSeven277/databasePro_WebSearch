/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *实体类，用来存储包含多表属性的查询结果：jsp页面可选根据某种属性排序
 * @author srx
 */
public class RtnInfo {
    private int Lid;
    private int Zip_Code;
    private String City;
    private int AWater;
    private int ALand;
    private double Lon;
    private double Lat;
    private int income;
    private int rent;

    public int getLid() {
        return Lid;
    }

    public void setLid(int Lid) {
        this.Lid = Lid;
    }

    public int getZip_Code() {
        return Zip_Code;
    }

    public void setZip_Code(int Zip_Code) {
        this.Zip_Code = Zip_Code;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public int getAWater() {
        return AWater;
    }

    public void setAWater(int AWater) {
        this.AWater = AWater;
    }

    public int getALand() {
        return ALand;
    }

    public void setALand(int ALand) {
        this.ALand = ALand;
    }

    public double getLon() {
        return Lon;
    }

    public void setLon(double Lon) {
        this.Lon = Lon;
    }

    public double getLat() {
        return Lat;
    }

    public void setLat(double Lat) {
        this.Lat = Lat;
    }

    public int getIncome() {
        return income;
    }

    public void setIncome(int income) {
        this.income = income;
    }

    public int getRent() {
        return rent;
    }

    public void setRent(int rent) {
        this.rent = rent;
    }
    
    
}
