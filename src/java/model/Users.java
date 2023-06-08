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
public class Users {
    private String userID;
    private String email;
    private String phoneNumber;
    private String fullName;
    private String pass;
    private String identityNumber;
    private Family familyId;

    public Users() {
    }

    public Users(String userID, String email, String phoneNumber, String fullName, String pass, String identityNumber, Family familyId) {
        this.userID = userID;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.fullName = fullName;
        this.pass = pass;
        this.identityNumber = identityNumber;
        this.familyId = familyId;
    }

    public Users(String userID, String email, String phoneNumber, String fullName, String pass, String identityNumber) {
        this.userID = userID;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.fullName = fullName;
        this.pass = pass;
        this.identityNumber = identityNumber;
    }
    

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getIdentityNumber() {
        return identityNumber;
    }

    public void setIdentityNumber(String identityNumber) {
        this.identityNumber = identityNumber;
    }

    public Family getFamilyId() {
        return familyId;
    }

    public void setFamilyId(Family familyId) {
        this.familyId = familyId;
    }

 
    
}
