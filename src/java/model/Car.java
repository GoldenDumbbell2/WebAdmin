/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author TADAR
 */
public class Car {
    private String carID;
    private String carName;
    private String carPlate;
    private String carColor;
    private String carPaperFront;
    private String carPaperBack;
    private boolean verifyState1;
    private boolean verifyState2;
    private String securitycode;
    private Family familyId;

    public Car() {
    }


    public Car(String carID, String carName, String carPlate, String carColor, String carPaperFront, String carPaperBack, boolean verifyState1, boolean verifyState2) {
        this.carID = carID;
        this.carName = carName;
        this.carPlate = carPlate;
        this.carColor = carColor;
        this.carPaperFront = carPaperFront;
        this.carPaperBack = carPaperBack;
        this.verifyState1 = verifyState1;
        this.verifyState2 = verifyState2;
    }

    public Car(String carID, String carName, String carPlate, String carColor, String carPaperFront, String carPaperBack, boolean verifyState1, boolean verifyState2, Family familyId) {
        this.carID = carID;
        this.carName = carName;
        this.carPlate = carPlate;
        this.carColor = carColor;
        this.carPaperFront = carPaperFront;
        this.carPaperBack = carPaperBack;
        this.verifyState1 = verifyState1;
        this.verifyState2 = verifyState2;
        this.familyId = familyId;
    }

    public Car(String carID, String carName, String carPlate, String carColor, boolean verifyState1, boolean verifyState2, Family familyId) {
        this.carID = carID;
        this.carName = carName;
        this.carPlate = carPlate;
        this.carColor = carColor;
        this.verifyState1 = verifyState1;
        this.verifyState2 = verifyState2;
        this.familyId = familyId;
    }

 
    public Car(String carID, String carName, String carPlate, String carColor) {
        this.carID = carID;
        this.carName = carName;
        this.carPlate = carPlate;
        this.carColor = carColor;
    }

    public Car(String carID, String carName, String carPlate, String carColor, Family familyId) {
        this.carID = carID;
        this.carName = carName;
        this.carPlate = carPlate;
        this.carColor = carColor;
        this.familyId = familyId;
    }
    
    
    public String getCarID() {
        return carID;
    }

    public void setCarID(String carID) {
        this.carID = carID;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarPlate() {
        return carPlate;
    }

    public void setCarPlate(String carPlate) {
        this.carPlate = carPlate;
    }

    public String getCarColor() {
        return carColor;
    }

    public void setCarColor(String carColor) {
        this.carColor = carColor;
    }

    public String getCarPaperFront() {
        return carPaperFront;
    }

    public void setCarPaperFront(String carPaperFront) {
        this.carPaperFront = carPaperFront;
    }

    public String getCarPaperBack() {
        return carPaperBack;
    }

    public void setCarPaperBack(String carPaperBack) {
        this.carPaperBack = carPaperBack;
    }

    public boolean isVerifyState1() {
        return verifyState1;
    }

    public void setVerifyState1(boolean verifyState1) {
        this.verifyState1 = verifyState1;
    }

    public boolean isVerifyState2() {
        return verifyState2;
    }

    public void setVerifyState2(boolean verifyState2) {
        this.verifyState2 = verifyState2;
    }

    public String getSecuritycode() {
        return securitycode;
    }

    public void setSecuritycode(String securitycode) {
        this.securitycode = securitycode;
    }

    public Family getFamilyId() {
        return familyId;
    }

    public void setFamilyId(Family familyId) {
        this.familyId = familyId;
    }




    
}
