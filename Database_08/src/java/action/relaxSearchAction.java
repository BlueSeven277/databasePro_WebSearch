/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import SQLconnect.JDBCTest;
import bean.Location;
import bean.RtnInfo;
import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Scope;
import java.sql.Connection;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.HttpServletRequest;
import java.sql.ResultSet;  
import java.sql.ResultSetMetaData;
import java.sql.SQLException;  
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.openejb.server.httpd.HttpRequest;
import javax.servlet.http.HttpServletRequest;


/**
 *
 * @author srx
 */
public class relaxSearchAction extends ActionSupport{

     public String execute() throws SQLException {
         //if (true){return SUCCESS;}
         System.out.println(00000);
         
        //新建连接  
        try {  
             System.out.println(11111);
            new JDBCTest();  
        } catch (Exception e) {  
            return INPUT;  
        }  
        
        
         try {  
             
             //request 用于接收前台传来的数据，使用request.getParameter方法
        HttpServletRequest request=ServletActionContext.getRequest();
        String income = request.getParameter("Expected_Income");
        int income_down = Integer.parseInt(income);
        int income_up = income_down + 50000;
        String price = request.getParameter("Expected_Price");
        int price_down = Integer.parseInt(price);
        int price_up = price_down + 300;
        String state = request.getParameter("State_Name");
        String preference = request.getParameter("Preference");
        
             List<RtnInfo> Rtnlist= new ArrayList<RtnInfo>();
             
             while(Rtnlist.isEmpty()){
        
        //select city given state code 
        String sql;
        if(!"null".equals(state)){
        if("Coast".equals(preference))
            sql = "select distinct locationFiltered.lid, locationFiltered.city, locationFiltered.zip_code, "
                    + "geoFiltered.lat as latitude, geoFiltered.lon as longitude, geoFiltered.awater as water_area, geoFiltered.aland as land_area, "
                    + "incomeFiltered.mean as income_avg, rentFiltered.mean as rent_avg "
                + "from (select zip_code, mean from income where mean > " + income_down + " and mean < " + income_up + ") as incomeFiltered "
                + "join (select zip_code, mean from rent where mean > " + price_down + " and mean < " + price_up + ") as rentFiltered "
                + "using (zip_code) "
                + "join (select zip_code, lid, city from location join (select state_code from state where state_name = '" + state + "') as stateFiltered using (state_code) ) as locationFiltered "
                + "using (zip_code) "
                + "join (select lid, lat, lon, awater, aland from geofeatures where wet > 3.5) as geoFiltered "
                + "using (lid) "
                + "order by income_avg desc, rent_avg, water_area;";
        else
            sql = "select distinct locationFiltered.lid, locationFiltered.city, locationFiltered.zip_code, "
                    + "geoFiltered.lat as latitude, geoFiltered.lon as longitude, geoFiltered.awater as water_area, geoFiltered.aland as land_area, "
                    + "incomeFiltered.mean as income_avg, rentFiltered.mean as rent_avg "
                + "from (select zip_code, mean from income where mean > " + income_down + " and mean < " + income_up + ") as incomeFiltered "
                + "join (select zip_code, mean from rent where mean > " + price_down + " and mean < " + price_up + ") as rentFiltered "
                + "using (zip_code) "
                + "join (select zip_code, lid, city from location join (select state_code from state where state_name = '" + state + "') as stateFiltered using (state_code) ) as locationFiltered "
                + "using (zip_code) "
                + "join (select lid, lat, lon, awater, aland from geofeatures where wet < 3.5) as geoFiltered "
                + "using (lid) "
                + "order by income_avg desc, rent_avg, water_area;";
        }
        else{
            if("Coast".equals(preference))
            sql = "select distinct locationFiltered.lid, locationFiltered.city, locationFiltered.zip_code, "
                    + "geoFiltered.lat as latitude, geoFiltered.lon as longitude, geoFiltered.awater as water_area, geoFiltered.aland as land_area, "
                    + "incomeFiltered.mean as income_avg, rentFiltered.mean as rent_avg "
                + "from (select zip_code, mean from income where mean > " + income_down + " and mean < " + income_up + ") as incomeFiltered "
                + "join (select zip_code, mean from rent where mean > " + price_down + " and mean < " + price_up + ") as rentFiltered "
                + "using (zip_code) "
                + "join (select zip_code, lid, city from location join state using (state_code) ) as locationFiltered "
                + "using (zip_code) "
                + "join (select lid, lat, lon, awater, aland from geofeatures where wet > 3.5) as geoFiltered "
                + "using (lid) "
                + "order by income_avg desc, rent_avg, water_area;";
        else
            sql = "select distinct locationFiltered.lid, locationFiltered.city, locationFiltered.zip_code, "
                    + "geoFiltered.lat as latitude, geoFiltered.lon as longitude, geoFiltered.awater as water_area, geoFiltered.aland as land_area, "
                    + "incomeFiltered.mean as income_avg, rentFiltered.mean as rent_avg "
                + "from (select zip_code, mean from income where mean > " + income_down + " and mean < " + income_up + ") as incomeFiltered "
                + "join (select zip_code, mean from rent where mean > " + price_down + " and mean < " + price_up + ") as rentFiltered "
                + "using (zip_code) "
                + "join (select zip_code, lid, city from location join state using (state_code) ) as locationFiltered "
                + "using (zip_code) "
                + "join (select lid, lat, lon, awater, aland from geofeatures where wet < 3.5) as geoFiltered "
                + "using (lid) "
                + "order by income_avg desc, rent_avg, water_area;";
        }
       String sqlstate = "select State_Name from state;";
        //SQL语句  
     /*   String sql = "select * From location Where State_Code='"  
                + request.getParameter("State_Code") + "' and City='" + request.getParameter("City") +  "' and Lid="+request.getParameter("Lid");  
        
        *///没加验证，无法处理空值
//    String sql2 = "select * from location where Lid = "+Lid;
            //Connection conn=JDBCTest.getConnection();
            Connection conn=JDBCTest.getConnection();
         //   Statement st = null;
           // ResultSet rs = null;
            Statement st = null;
            ResultSet rs = null;
          //  ResultSet rs2 = null;
        //获得检索结果并返回结果字符串  
        //try {  
             
             //  st=conn.createStatement();
            st = conn.createStatement();
            System.out.println("in SearchAction");
            //rs = st.executeQuery(sql);
            rs = st.executeQuery(sql);
//            rs2 =st.executeQuery(sqlstate);
//            while(rs2.next()){
//                // "<option value=\""+ rs2.getString("State_Name")+"\">"+rs2.getString("State_Name")+"</option>";
//                //  <option value="Alabama"> Alabama </option>       
//                System.out.println( "<option value="+ rs2.getString("State_Name")+">"+rs2.getString("State_Name")+"</option>");
//            }
                 
            //rs = JDBCTest.getConnection().createStatement().executeQuery(sql)
            
            //System.out.println(rs.getString(1));
           
          
           //把查询结果放入List里
             //List<RtnInfo> Rtnlist= new ArrayList<RtnInfo>();
                RtnInfo rtnInfo=null;
                while(rs.next()){
                    System.out.println(rs);
                    rtnInfo=new RtnInfo();
                    rtnInfo.setLid(rs.getInt("lid"));
                    rtnInfo.setCity(rs.getString("city"));
                    rtnInfo.setZip_Code(rs.getInt("Zip_Code"));
                    rtnInfo.setLat(rs.getDouble("latitude"));
                    rtnInfo.setLon(rs.getDouble("longitude"));
                    rtnInfo.setAWater(rs.getInt("water_area"));
                    rtnInfo.setALand(rs.getInt("land_area"));
                    rtnInfo.setIncome(rs.getInt("income_avg"));
                    rtnInfo.setRent(rs.getInt("rent_avg"));
                    Rtnlist.add(rtnInfo);
                    System.out.println(rtnInfo);
                }
         
               
        
     //    ActionContext ac=ActionContext.getContext();
     //       Map<String,Object> session=ac.getSession();
      
           // session.put("locationlist", locationlist);
            //  HttpServletRequest request = ServletActionContext.getRequest ();
        /*
            if (!locationlist.isEmpty()) {  
               // HttpServletRequest request = ServletActionContext.getRequest ();
                request.setAttribute("locationlist",locationlist);
                System.out.println(locationlist);
                return SUCCESS;
                //return rs.getInt("Total") >= 1 ? SUCCESS : INPUT;  
            }  
        */  
            
            if (!Rtnlist.isEmpty()) {  
               // HttpServletRequest request = ServletActionContext.getRequest ();
                request.setAttribute("rtnlist",Rtnlist);
                System.out.println(Rtnlist);
                //return SUCCESS;
                break;
                //return rs.getInt("Total") >= 1 ? SUCCESS : INPUT;  
            }
            else{
                income_up += 50000 * 0.1;
                price_up += 300 * 0.1;
            }
            
            
          }
             return SUCCESS;
             
         }catch (SQLException ex) {  
            return ERROR;  
        } finally {  
            JDBCTest.CloseCon();  
        }  
        //return ERROR;  
    }  
    
    
}
