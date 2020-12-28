/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.*;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
//@author:Subhi Bhuiyan
public class UserDatabase {

    Connection con;

    public UserDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveUser(User user) {
        boolean set = false;
        try {
            //Insert register data to database
            String query = "insert into user(name,email,password) values(?,?,?)";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getName());
            pt.setString(2, user.getEmail());
            pt.setString(3, user.getPassword());

            pt.executeUpdate();
            set = true;
        } catch (SQLException e) {
        }
        return set;
    }

    //user login
    public User logUser(String email, String pass){
        User user = null;
        try{
            String query = "select * from user where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1,email);
            pst.setString(2,pass);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                user = new User();
                user.setId(rs.getInt("user_id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setUserType(rs.getString("user_type"));
            }
            
        }catch(SQLException e){
        }
        return user;
    }
    //userCount
     public  Hashtable<Integer,String> getUserCount(){
       User user = null;
       Hashtable<Integer, String> map = new Hashtable<>();
        try{
            String query = "select * from user";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                  user = new User();
                  user.setId(rs.getInt("user_id"));
                  user.setEmail(rs.getString("email"));
                  int id = user.getId();
                  String s = user.getEmail();
                  map.put(id,s);
            }
        }
        catch(SQLException e){
        }
       return map;
    }
     public  List<User> getUserList(){
       User user = null;
       List<User> list = new ArrayList();
        try{
            String query = "select * from user";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                  user = new User();
                 user.setId(rs.getInt("user_id"));
                 user.setName(rs.getString("name"));
                 user.setEmail(rs.getString("email"));
                 user.setUserType(rs.getString("user_type"));
                 list.add(user);
            }
        }
        catch(SQLException e){
        }
       return list;
    }

}

