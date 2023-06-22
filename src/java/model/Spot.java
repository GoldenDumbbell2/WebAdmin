 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author TADAR
 */
public class Spot {
    private String sensorID;
    private boolean available;  
    private String location;
    private ApartmentBlock AblockID;

    public Spot() {
    }

    public Spot(String sensorID, boolean available, String location, ApartmentBlock AblockID) {
        this.sensorID = sensorID;
        this.available = available;
        this.location = location;
        this.AblockID = AblockID;
    }
    

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }



    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public String getSensorID() {
        return sensorID;
    }

    public void setSensorID(String sensorID) {
        this.sensorID = sensorID;
    }

    public ApartmentBlock getAblockID() {
        return AblockID;
    }

    public void setAblockID(ApartmentBlock AblockID) {
        this.AblockID = AblockID;
    }
    
    
    
}
