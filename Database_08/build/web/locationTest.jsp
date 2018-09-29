
    Document   : locationTest
    Created on : 2018-4-1, 18:39:10
    Author     : srx
    ???????


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Dream House!</h1>
         <form class="stdform" action="locationSearch" method="post" name="searchContext"  >
                    <p>
                        <label>Select A State with State_Code</label>
                        <span class="formwrapper">
                            	<select name = "State_Code" data-placeholder="Four real dataset provided..."  class="chzn-select"
                                        style="width:350px;" tabindex="2">
                                  <option value="null"></option>
                                  <option value="1">Code=1</option>
                                  <option value="2">Code=2</option>
                                  <option value="3">Code=3</option>
                                  <option value="4">Code=4</option>

                                </select>
                            </span>
                    </p>
                    
                    <p>
                        <label>Select A City with Attribute City</label>
                        <span class="formwrapper">
                            	<select name = "City" data-placeholder="Four real dataset provided..."  class="chzn-select"
                                        style="width:350px;" tabindex="2">
                                  <option value="null"></option>
                                  <option value="Prattville">Prattville</option>
                                  <option value="Eagle River">Eagle River</option>
                                  <option value="Ashland">Ashland</option>
                                  <option value="Marbury">Marbury</option>

                                </select>
                            </span>
                    </p>

                    <p>
                        <label>Lid</label>
                        <span class="field"><input type="text" name="Lid" class="smallinput"/></span>
                        <small class="desc">LocationId in table location.</small>
                    </p>
                
                    <p class="stdformbutton">
                        <button class="submit radius2" >Submit Button</button>
                        <input type="reset" class="reset radius2" value="Reset Button"/>
                    </p>


                </form>
    </body>
</html>
