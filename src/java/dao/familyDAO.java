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
import model.ApartmentBlock;
import model.Family;
import model.Users;
import util.DBContext;

/**
 *
 * @author TADAR
 */
public class familyDAO {
     private DBContext db;
    ApartmentBlockDAO AblockID;

    private List<Family> listItems;

    public DBContext getDb() {
        return db;
    }

    public void setDb(DBContext db) {
        this.db = db;
    }
    
    public ApartmentBlockDAO getADao() {
        return AblockID;
    }

    public void setADao(ApartmentBlockDAO AblockID) {
        this.AblockID = this.AblockID;
    }

    Family dm;

    public familyDAO() {
        listItems = new ArrayList<>();
        db = new DBContext();
        AblockID = new ApartmentBlockDAO();
    }


      public familyDAO(List<Family> listItems) {
        this.listItems = listItems;
    }

    public List<Family> getListItems() {
        return listItems;
    }

    public void setListItems(List<Family> listItems) {
        this.listItems = listItems;
    }
    
    public List<Family> read() {
     listItems.clear();
        try {
            String sql = "select * from tb_Family";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String familyID = rs.getString("familyId");
                String familyName = rs.getString("familyName");
                ApartmentBlock apartmentBlock = AblockID.details(rs.getString("AblockID"));
               
                dm = new Family(familyID, familyName, apartmentBlock);
                listItems.add(dm);
            }
            return listItems;
        } catch (SQLException e) {
            Logger.getLogger(familyDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public Family details(String familyID) {
       try {
            String sql = "select * from tb_Family where familyId=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, familyID);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String familyI = rs.getString("familyId");
                String familyName = rs.getString("familyName");
                ApartmentBlock apartmentBlock = AblockID.details(rs.getString("AblockID"));
               
                dm = new Family(familyID, familyName, apartmentBlock);

            }
            return dm;
        } catch (SQLException e) {
            Logger.getLogger(userDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
}
