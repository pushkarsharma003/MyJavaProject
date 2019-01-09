<%-- 
    Document   : PostAd
    Created on : Nov 18, 2018, 11:10:52 PM
    Author     : PushkarSharma
--%>

<%@include file="Header.jsp"%>
<% 
    if(session.getAttribute("username")==null)
    {
        response.sendRedirect("Login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Free Ad</title>
        <style>
    .input[type=text],select{
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid black;
    border-radius: 4px;
    box-sizing: border-box;
}

.input[type=number],select{
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid black;
    border-radius: 4px;
    box-sizing: border-box;
}
.input[type=submit]{
    width: 7%;
    background-color: #2E86C1;;
    color:white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 8px;
    cursor: pointer;
}

.input,select{
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid black;
    border-radius: 4px;
    box-sizing: border-box;
}

.input[type=submit]:hover {
    background-color:#2E86C1;
    color:white;
    border: none;
    font-weight: bold; 
}

.input:focus 
{
      border: 1px solid #2E86C1;
}
.input[type=text]:focus 
{
      border: 1px solid #2E86C1;
}
.input[type=number]:focus 
{
      border: 1px solid #2E86C1; 
}
.select
{
      background-color: white;
        color:black;       
}

.select:hover {
    background-color:#2E86C1;
      color: white;
}
h6{
    color:blue;
}
    </style>
    </head>
    <body style="font-family: verdana">
        <center>
            <h1>Post Free Ad</h1>
        <div>
            <form action="PostAdPage" method="post">
                <select name="AdCategory" required>
                    <option value="" disabled="disabled" selected="selected" class="select">Select your category</option>
                    <optgroup label="Electronics">
                    <option name="electronics" value="mobile" class="select" >Mobiles</option>
                    <option name="electronics" value="laptop" class="select" >Laptops</option>
                    <optgroup label="Education">
                    <option name="education" value="school book" class="select">School Books</option>
                    <option name="education" value="college book" class="select">College Books</option>
                    <option name="education" value="other book" class="select">Other Books</option>
                    <optgroup label="Automobiles">
                    <option name="Automobiles" value="car" class="select">Cars</option>
                    <option name="Automobiles" value="bike" class="select">Bikes</option>
                    <option name="Automobiles" value="bicycle" class="select">Bicycles</option>
                    <option name="Automobiles" value="scooter" class="select">Scooter</option>
                    <option name="Automobiles" value="scooty" class="select">Scooty</option>
                    <optgroup label="Real Estate">
                    <option name="Automobiles" value="flat" class="select">Flats</option>
                    <option name="Automobiles" value="house" class="select">Houses</option>
                    <option name="Automobiles" value="shop" class="select">Shops</option>
                    <option name="Automobiles" value="plot" class="select">Plots</option>
                    </select><br><br>
                    <input type="number" name="price" Placeholder="Set Price (in Rupees)" class="input" required><br><br>
                    <textarea rows="3" cols="45" placeholder="Add Description of your item" maxlength="50" class="input" name="description" required></textarea>
                   <h6>*Please enter neccessary details about your selling item within 50 words.<br>
                   </h6>      
                   <input type="submit" value="Post Ad" class="input">
            </form> 
            </div>
        </center>
    </body>
</html>
<%@include file="Footer.jsp" %>