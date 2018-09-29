
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="SQLconnect.JDBCTest" %>
<%@ page import = "java.util.*" %>
<%@ page import = "bean.Location.*" %>
<%@page language="java" import="java.util.*,bean.Location" %>


<!DOCTYPE html>
<html>
    <title>Dreaming House Home Page</title>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
        <!-- put welcome on the top right -->
        .w3-display-container w3-content{
            positon: relative;
            text-align: center;
        }
        .topRight{
            position: absolute;
            top: 25%;
            right: 7%;
            font-size: 60px; 
            font-color: white;
        }


        <!-- add scroll bar to input -->
        .w3-input w3-border{
            height: 50px;
            overflow: auto;
        }

        h1 { text-align: center; text-decoration: underline }

    </style>
    <head>
        <script>
            function citySelect()
            {
            String path = request.getContextPath();
            String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
            var elm = document.getElementById('city'),
                    df = document.createDocumentFragment();
            var i, option;
            ArrayList citylist = (ArrayList)request.getAttribute("citylist");
            for (int i = 0; i < citylist.size(); i++)
            {
            Location lc = (Location)citylist.get(i);
            option = document.createElement('option');
            option.value = lc.getCity();
            option.appendChild(document.createTextNode(i));
            df.appendChild(option);
            }
            elm.appendChild(df);
            }

        </script>

    </head>
    <body class="w3-light-grey" onload="stateSelect()">

        <!-- Header -->
        <header class="w3-display-container w3-content" style="max-width:1500px;"> 
            <img class="w3-image" src="http://www.tripyoda.com/wp-content/uploads/2017/10/USAbanner-attractions.jpg" alt="The House" style="min-width:1000px" width="1500" height="800"> 
            <div class="topRight"> Welcome to America !</div> 
        </header>

        <!-- Page content -->
        <div class="w3-content" style="max-width:1532px;">

            <div class="w3-container w3-margin-top" id="welcome">
                <h1> Our Website </h1>
                <p style="text-align:center;"> Here is the introduction about our website...............................................................</p>
            </div> 

            <div class="w3-container w3-margin-top" id="imageLarge">   
                <img src="https://upload.wikimedia.org/wikipedia/commons/a/ad/Charleston%2C_WV%2C_USA_banner_Eugene_A._Carter_Memorial_Bridge_.jpg" alt="bridge" style="width:100%">       
            </div>     

            <div class="w3-container w3-margin-top" id="statistics">
                <h1> Statistics </h1>
            </div>

            <div class="container" id="search">
                <h1> Start Your Search </h1>
                <!-- put the form section in this part -->   
                <form id="f1"  action="locationSearch" method="post" name="searchContext">
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-credit-card"></i> Expected Income (US$/Year) </label>
                        <select class="w3-input w3-border" id = "expectedIncome" name = "Expected_Income" >
                            <option value="null"> --- Please select --- </option>
                            <option value="0"> 0 </option>
                            <option value="50000"> 50000 </option>
                            <option value="100000"> 100000 </option>
                            <option value="150000"> 150000 </option>
                            <option value="200000"> 200000 </option>
                            <option value="250000"> 250000 </option>
                        </select>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-money"></i> Expected Rental Price (US$/Month)</label>
                        <select class="w3-input w3-border" id = "expectedPrice" name = "Expected_Price" >
                            <option value="null"> --- Please select --- </option>
                        
                            <option value="0"> 0 </option>
                            <option value="300"> 300 </option>
                            <option value="600"> 600 </option>
                            <option value="900"> 900 </option>
                            <option value="1200"> 1200 </option>
                            <option value="1500"> 1500 </option>
                            <option value="1800"> 1800 </option>
                            <option value="2100"> 2100 </option>
                            <option value="2400"> 2400 </option>
                            <option value="2700"> 2700 </option>
                            <option value="3000"> 3000 </option>
                            <option value="4000"> 4000 </option>
                        </select>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-flag"></i> State Name </label>
                        <select class="w3-input w3-border" id = "stateName" name = "State_Name">
                            <option value="null"> --- No Preference --- </option>
                            <option value="Alaska">Alaska</option>
                            <option value="Arizona">Arizona</option>
                            <option value="Arkansas">Arkansas</option>
                            <option value="California">California</option>
                            <option value="Colorado">Colorado</option>
                            <option value="Connecticut">Connecticut</option>
                            <option value="Delaware">Delaware</option>
                            <option value="District of Columbia">District of Columbia</option>
                            <option value="Florida">Florida</option>
                            <option value="Georgia">Georgia</option>
                            <option value="Hawaii">Hawaii</option>
                            <option value="Idaho">Idaho</option>
                            <option value="Illinois">Illinois</option>
                            <option value="Indiana">Indiana</option>
                            <option value="Iowa">Iowa</option>
                            <option value="Kansas">Kansas</option>
                            <option value="Kentucky">Kentucky</option>
                            <option value="Louisiana">Louisiana</option>
                            <option value="Maine">Maine</option>
                            <option value="Maryland">Maryland</option>
                            <option value="Massachusetts">Massachusetts</option>
                            <option value="Michigan">Michigan</option>
                            <option value="Minnesota">Minnesota</option>
                            <option value="Mississippi">Mississippi</option>
                            <option value="Missouri">Missouri</option>
                            <option value="Montana">Montana</option>
                            <option value="Nebraska">Nebraska</option>
                            <option value="Nevada">Nevada</option>
                            <option value="New Hampshire">New Hampshire</option>
                            <option value="New Jersey">New Jersey</option>
                            <option value="New Mexico">New Mexico</option>
                            <option value="New York">New York</option>
                            <option value="North Carolina">North Carolina</option>
                            <option value="North Dakota">North Dakota</option>
                            <option value="Ohio">Ohio</option>
                            <option value="Oklahoma">Oklahoma</option>
                            <option value="Oregon">Oregon</option>
                            <option value="Pennsylvania">Pennsylvania</option>
                            <option value="Rhode Island">Rhode Island</option>
                            <option value="South Carolina">South Carolina</option>
                            <option value="South Dakota">South Dakota</option>
                            <option value="Tennessee">Tennessee</option>
                            <option value="Texas">Texas</option>
                            <option value="Utah">Utah</option>
                            <option value="Vermont">Vermont</option>
                            <option value="Virginia">Virginia</option>
                            <option value="Washington">Washington</option>
                            <option value="West Virginia">West Virginia</option>
                            <option value="Wisconsin">Wisconsin</option>
                            <option value="Wyoming">Wyoming</option>
                            <option value="Puerto Rico">Puerto Rico</option>

                        </select>
                    </div>


                    <!-- 
                            <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                                <label><i class="fa fa-institution"></i> City </label>
                                <select class="w3-input w3-border" id = "city" name = "City" >
                                    
                                    <option value="empty"> Empty</option>
                
                                </select>
                
                            </div>
                    -->      
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-heart"></i> Preference </label>
                        <select class="w3-input w3-border" id = "preference" name = "Preference" >
                            <option value="Coast"> Coast </option>
                            <option value="Inland"> Inland </option>
                        </select>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-search"></i> Search</label>
                        <button  class="w3-button w3-block w3-black">Search</button>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-search"></i> Relax Search</label>
                        <button  class="w3-button w3-block w3-black" onclick="del();">Relax Search</button>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4" style="margin-top: 30px; ">
                        <label><i class="fa fa-refresh"></i> Reset</label>
                        <input type="reset" class="w3-button w3-block w3-black" value="Reset"/>
                    </div>
                </form>
            </div> 

            <script type="text/javascript">
                function del(){
                document.forms.f1.action = "locationRelaxSearch";
                document.forms.f1.submit();
                }
            </script>
            <!-- some small images -->      
            <div class="w3-container w3-margin-top" id="imageSmall">
                <div class="w3-row-padding w3-padding-16">
                    <div class="w3-third w3-margin-bottom">
                        <img src="http://1.bp.blogspot.com/_qKAj9ZRMD9k/TOvanlS915I/AAAAAAAAANg/EN1TrL-J0YA/s1600/Luxury%2BHome%2BUS.jpg" alt="house1" style="width:100%">     
                    </div>
                    <div class="w3-third w3-margin-bottom">
                        <img src="https://favim.com/media/uploads/images/orig/140309/amazing-beautiful-cute-dream-Favim.com-1466856.jpg" alt="house2" style="width:100%">
                    </div>
                    <div class="w3-third w3-margin-bottom">
                        <img src="https://s14.favim.com/orig/160129/amazing-america-art-beauty-Favim.com-3940099.jpg" alt="house3" style="width:100%">
                    </div>
                </div>          
            </div> 

            <div class="w3-container w3-margin-top" id="result">
                <h1> Here are Results</h1>

            </div> 
            <!-- example to put images horizontaly --> 


            <div class="w3-row-padding w3-padding-16 w3-text-white w3-large">
                <div class="w3-half w3-margin-bottom">
                    <div class="w3-display-container">
                        <img src="/w3images/cinqueterre.jpg" alt="Cinque Terre" style="width:100%">
                        <span class="w3-display-bottomleft w3-padding">Cinque Terre</span>
                    </div>
                </div>
                <div class="w3-half">
                    <div class="w3-row-padding" style="margin:0 -16px">
                        <div class="w3-half w3-margin-bottom">
                            <div class="w3-display-container">
                                <img src="/w3images/newyork2.jpg" alt="New York" style="width:100%">
                                <span class="w3-display-bottomleft w3-padding">New York</span>
                            </div>
                        </div>
                        <div class="w3-half w3-margin-bottom">
                            <div class="w3-display-container">
                                <img src="/w3images/sanfran.jpg" alt="San Francisco" style="width:100%">
                                <span class="w3-display-bottomleft w3-padding">San Francisco</span>
                            </div>
                        </div>
                    </div>
                    <div class="w3-row-padding" style="margin:0 -16px">
                        <div class="w3-half w3-margin-bottom">
                            <div class="w3-display-container">
                                <img src="/w3images/pisa.jpg" alt="Pisa" style="width:100%">
                                <span class="w3-display-bottomleft w3-padding">Pisa</span>
                            </div>
                        </div>
                        <div class="w3-half w3-margin-bottom">
                            <div class="w3-display-container">
                                <img src="/w3images/paris.jpg" alt="Paris" style="width:100%">
                                <span class="w3-display-bottomleft w3-padding">Paris</span>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>


            <!-- End page content -->
        </div>

        <!-- Footer -->
        <footer class="w3-padding-32 w3-black w3-center w3-margin-top">
            <h5></h5>
            <div class="w3-xlarge w3-padding-16">
                <i class="fa fa-facebook-official w3-hover-opacity"></i>
                <i class="fa fa-instagram w3-hover-opacity"></i>
                <i class="fa fa-snapchat w3-hover-opacity"></i>
                <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                <i class="fa fa-twitter w3-hover-opacity"></i>
                <i class="fa fa-linkedin w3-hover-opacity"></i>
            </div>
            <p>Powered by Yifang LIU, Ruoxi SHI, Jingyi REN</p>
        </footer>


        <script>

<!-- creat option list for State_Code -->

            function stateSelect()
            {
            var elm = document.getElementById('State_Name'),
                    df = document.createDocumentFragment();
            var i, length = 72, option;
            for (i = 1; i <= length; i++)
            {
            option = document.createElement('option');
            option.value = i;
            option.appendChild(document.createTextNode(i));
            df.appendChild(option);
            }
            elm.appendChild(df);
            }





<!-- creat a table for state name and state code  not work!-->



<!-- create a city list -->






        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
        <!--
        To use this code on your website, get a free API key from Google.
        Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
        -->

    </body>
</html>
