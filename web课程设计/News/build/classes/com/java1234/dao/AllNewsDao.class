package com.cuit.javaweb.mvc;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
 
public class AllNewsDao {
     public List<AllNewsModel> getAllNews(){
        List<AllNewsModel> AllNews=new ArrayList<AllNewsModel>();
        Connection conn=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        try{
            String driverClass="com.mysql.jdbc.Driver";
            String url="jdbc:mysql:///test";
            String user="root";
            String password="root";
            Class.forName(driverClass);
            conn=DriverManager.getConnection(url,user,password);
            String sql="Select * from news";
            preparedStatement=conn.prepareStatement(sql);
            resultSet=preparedStatement.executeQuery();
            while(resultSet.next()){
                int nid=resultSet.getInt(1);
                String ntitle=resultSet.getString(2);
                String ntype=resultSet.getString(3);
                String nauthor=resultSet.getString(4);
                AllNewsModel news=new AllNewsModel(nid,ntitle,ntype,nauthor);
                AllNews.add(news);
            }
             
        }
        catch(Exception ex){
            ex.printStackTrace();
        }finally{
         try{
            if(resultSet!=null){
                resultSet.close();
            }
            }catch(SQLException ex){
                ex.printStackTrace();
            }
          
         try{
                if(preparedStatement!=null){
                    preparedStatement.close();
                }
                }catch(SQLException ex){
                    ex.printStackTrace();
                }
          
         try{
                if(conn!=null){
                    conn.close();
                }
                }catch(SQLException ex){
                    ex.printStackTrace();
                }
        }
        return AllNews;
    }
}