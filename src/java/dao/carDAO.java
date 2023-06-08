/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ApartmentBlock;
import model.Car;
import model.Family;
import model.Users;
import util.DBContext;

/**
 *
 * @author TADAR
 */
public class carDAO  implements ICrud<String, Car> {

    private DBContext db;
    familyDAO familyDAO;

    private List<Car> listItems;

    public DBContext getDb() {
        return db;
    }

    public void setDb(DBContext db) {
        this.db = db;
    }
    
    Car dm;

    public carDAO() {
        listItems = new ArrayList<>();
        db = new DBContext();
        familyDAO = new familyDAO();
    }


      public carDAO(List<Car> listItems) {
        this.listItems = listItems;
    }

    public List<Car> getListItems() {
        return listItems;
    }

    public void setListItems(List<Car> listItems) {
        this.listItems = listItems;
    }
    @Override
    public List<Car> read(){
        listItems.clear();
        try {
            String sql = "select * from tb_Car";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String carID = rs.getString("carID");
                String carname = rs.getString("carName");
                String carPlate = rs.getString("carPlate");
                String carColor = rs.getString("carColor");
                String carPaperFront = rs.getString("carPaperFront");
                String carPaperBack = rs.getString("carPaperBack");
                boolean verifyState1 = rs.getBoolean("verifyState1");
                boolean verifyState2 = rs.getBoolean("verifyState2");
                Family family = familyDAO.details(rs.getString("familyId"));
                if (family == null) {
                    dm = new Car(carID, carname, carPlate, carColor, carPaperFront, carPaperBack, verifyState1, verifyState2);
                }else{
                dm = new Car(carID, carname, carPlate, carColor, carPaperFront, carPaperBack, verifyState1, verifyState2, family);
                }
                listItems.add(dm);
            }
            return listItems;
        } catch (SQLException e) {
            Logger.getLogger(carDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }


     public List<Car> readUnverify(){
        listItems.clear();
        try {
            String sql = "select * from tb_Car where verifyState1=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
             stmt.setString(1, "FALSE");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String carID = rs.getString("carID");
                String carname = rs.getString("carName");
                String carPlate = rs.getString("carPlate");
                String carColor = rs.getString("carColor");
                String carPaperFront = rs.getString("carPaperFront");
                String carPaperBack = rs.getString("carPaperBack");
                boolean verifyState1 = rs.getBoolean("verifyState1");
                boolean verifyState2 = rs.getBoolean("verifyState2");
                Family family = familyDAO.details(rs.getString("familyId"));
                if (family == null) {
                    dm = new Car(carID, carname, carPlate, carColor, carPaperFront, carPaperBack, verifyState1, verifyState2);
                }else{
                dm = new Car(carID, carname, carPlate, carColor, carPaperFront, carPaperBack, verifyState1, verifyState2, family);
                }
                
                
            }
            return listItems;
        } catch (SQLException e) {
            Logger.getLogger(carDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    @Override
    public Car details(String id) {
        try {
            String sql = "select * from tb_Car where carID=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String carID = rs.getString("carID");
                String carname = rs.getString("carName");
                String carPlate = rs.getString("carPlate");
                String carColor = rs.getString("carColor");
                String carPaperFront = rs.getString("carPaperFront");
                String carPaperBack = rs.getString("carPaperBack");
                boolean verifyState1 = rs.getBoolean("verifyState1");
                boolean verifyState2 = rs.getBoolean("verifyState2");
                Family family = familyDAO.details(rs.getString("familyId"));
                if (family == null) {
                    dm = new Car(carID, carname, carPlate, carColor, carPaperFront, carPaperBack, verifyState1, verifyState2);
                }else{
                dm = new Car(carID, carname, carPlate, carColor, carPaperFront, carPaperBack, verifyState1, verifyState2, family);
                }
               
            }
            return dm;
        } catch (SQLException e) {
            Logger.getLogger(carDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    @Override
    public void create(Car newItem) {
        try {
            String sql = "insert into tb_Car(carID, carName, carPlate, carColor, verifyState1, verifyState2, familyId) values(?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
                       

            stmt.setString(1, newItem.getCarID());
            stmt.setString(2, newItem.getCarName());
            stmt.setString(3, newItem.getCarPlate());
            stmt.setString(4, newItem.getCarColor());
            stmt.setBoolean(5, newItem.isVerifyState1());
            stmt.setBoolean(6, newItem.isVerifyState2());
            stmt.setString(7, newItem.getFamilyId().getFamilyID());
            stmt.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(carDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public void update(Car edittedItem) {
        try {
            String sql = "update tb_Car set carName=?, carPlate=?, carColor=?, verifyState1=? where carID=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(5, edittedItem.getCarID());
            stmt.setString(1, edittedItem.getCarName());
            stmt.setString(2, edittedItem.getCarPlate());
            stmt.setString(3, edittedItem.getCarColor());
            stmt.setString(4, "False");
           
            stmt.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(carDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public void delete(String carID) {
        try {
            String sql = "delete tb_Car where carID=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, carID);
            stmt.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(carDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
     public  List<Car> search(String search){
        try {
            String sql = "select * from tb_Car where carPlate like ?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, search);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String carID = rs.getString("carID");
                String carname = rs.getString("carName");
                String carPlate = rs.getString("carPlate");
                String carColor = rs.getString("carColor");
                String carPaperFront = rs.getString("carPaperFront");
                String carPaperBack = rs.getString("carPaperBack");
                boolean verifyState1 = rs.getBoolean("verifyState1");
                boolean verifyState2 = rs.getBoolean("verifyState2");
                Family family = familyDAO.details(rs.getString("familyId"));
                if (family == null) {
                dm = new Car(carID, carname, carPlate, carColor, carPaperFront, carPaperBack, verifyState1, verifyState2);
                listItems.add(dm);
                }else{
                dm = new Car(carID, carname, carPlate, carColor, carPaperFront, carPaperBack, verifyState1, verifyState2, family);
                listItems.add(dm);
                }
                
            }
            return listItems;
        } catch (SQLException e) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

}

