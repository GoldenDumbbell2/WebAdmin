/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Car;
import model.Family;
import util.DBContext;

/**
 *
 * @author TADAR
 */
public class unverifyDAO {
    
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

    public unverifyDAO() {
        listItems = new ArrayList<>();
        db = new DBContext();
        familyDAO = new familyDAO();
    }


      public unverifyDAO(List<Car> listItems) {
        this.listItems = listItems;
    }

    public List<Car> getListItems() {
        return listItems;
    }

    public void setListItems(List<Car> listItems) {
        this.listItems = listItems;
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
}
