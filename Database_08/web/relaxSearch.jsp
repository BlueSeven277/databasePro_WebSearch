<%-- 
    Document   : userSearch
    Created on : 2018-4-1, 18:34:11
    Author     : srx
    PS          :该用的控件基本这个页面里都有，直接用这个改改 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <form class="stdform" action="user_search" method="post" name="searchContext"  >
                    <p>
                        <label>Select A Dataset</label>
                        <span class="formwrapper">
                            	<select name = "dataset" data-placeholder="Four real dataset provided..."  class="chzn-select"
                                        style="width:350px;" tabindex="2">
                                  <option value="null"></option>
                                  <option value="Conference">Conference</option>
                                  <option value="Mammal">Mammal</option>
                                  <option value="Protein">Protein</option>
                                  <option value="Random">Random</option>

                                </select>
                            </span>
                    </p>

                    <p>
                        <label>k1</label>
                        <span class="field"><input type="text" name="k1" class="smallinput"/></span>
                        <small class="desc">Minimum bound of the number of results that you want.</small>
                    </p>
                    <p>
                        <label>k2</label>
                        <span class="field"><input type="text" name="k2" class="smallinput"/></span>
                        <small class="desc">Maximum bound of the number of results that you want.</small>
                    </p>

                    <p>
                        <label>Threshold</label>
                        <span class="field"><input type="text" name="threshold" class="smallinput"/></span>
                        <small class="desc">Edit distance.</small>
                    </p>
                    <p>
                        <label>Trade-off parameter</label>
                        <span class="field">
                            <select name="tradeOff" class="uniformselect" >
                            	<option value=0.5>0.5</option>
                                <option value=0.1>0.1</option>
                                <option value=0.3>0.3</option>
                                <option value=0.7>0.7</option>
                                <option value=0.9>0.9</option>
                            </select>

                        </span>
                    </p>
                    <p>
                        <label>Sequence of query input</label>
                        <span class="field" >
                            <textarea name="qInput" cols="80" rows="5" class="longinput"></textarea>
                        </span>
                    </p>
                    <p>
                        <label>Select Searching Algorithm</label>
                        <span class="field">
                            <select name="algorithm" class="uniformselect">
                            	<option value="genGreedy">genGreedy</option>
                                <option value="genCluster">genCluster</option>
                                <option value="CB2S">CB2S</option>
                                <option value="swap">swap</option>
                                <option value="comGreedy">comGreedy</option>
                            </select>

                        </span>
                    </p>

                    <p class="stdformbutton">
                        <button class="submit radius2" >Submit Button</button>
                        <input type="reset" class="reset radius2" value="Reset Button"/>
                    </p>


                </form>
    </body>
</html>
