/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author srx
 */
public class Location {
    private int Lid;
    private int State_Code ;
    private String County;
    private String City;
    private String Place;
    private String Type;
    private String Primary;
    private int Zip_Code;

    public int getLid() {
        return this.Lid;
    }

    public void setLid(int Lid) {
        this.Lid = Lid;
    }

    public int getState_Code() {
        return this.State_Code;
    }

    public void setState_Code(int State_Code) {
        this.State_Code = State_Code;
    }

    public String getCounty() {
        return this.County;
    }

    public void setCounty(String Country) {
        this.County = Country;
    }

    public String getCity() {
        return this.City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getPlace() {
        return this.Place;
    }

    public void setPlace(String Place) {
        this.Place = Place;
    }

    public String getType() {
        return this.Type;
    }

    public void setType(String Type) {
        this.Type = Type;
    }

    public String getPrimary() {
        return this.Primary;
    }

    public void setPrimary(String Primary) {
        this.Primary = Primary;
    }

    public int getZip_Code() {
        return this.Zip_Code;
    }

    public void setZip_Code(int Zip_Code) {
        this.Zip_Code = Zip_Code;
    }
    
}
