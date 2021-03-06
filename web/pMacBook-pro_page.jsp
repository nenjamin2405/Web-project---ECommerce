<%-- 
    Document   : pMacBook-pro_page
    Created on : Nov 19, 2016, 11:08:45 PM
    Author     : nhatduthan2405
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*"%>
<%@page import="Data.JDBCConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css?family=Raleway:200,400|Roboto+Slab:100" rel="stylesheet">
        
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
 
  <style>
      .submit-button{
                width: 100px;
                background-color: #333;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border : none;
                border-radius: 4px;
                cursor : pointer;
                    
            }
            .submit-button:hover{
                background-color: black;
            }
            
            .sub-nav-buy{
              margin: 0;
              display: table;
                width: 94%;
                display: block;
                overflow: auto;
                padding: 15px 40px 15px 40px;
                
                text-align: center;
                list-style: none;
                border-bottom: 1px solid #d5d5d5;
                background-color: rgba(251,251,251,0.8);
                
                
              
            }
            .sub-nav-buy li{
                display: inline-block;
            }
             .clr{
                clear:both;
                 font-size:0;
            }
             .test{
                
             width: 100%;
             height: 600px;
             overflow:hidden;
             z-index: 0;

  
            }
            .test .img_test{
               min-height:100%;
                
                z-index: 0;
    
                width:100%;
            }
            .test p{
                z-index: 1;
                margin-top: 10px;
            }
            .info-text{
                text-align: center;
               
                display: block;
                font-size: 17pt;
                width: 60%;
                margin: 0 auto; 
                
            }
            .info-product{
                text-align: center;
            }
             .NameandPrice{
                padding : 35px 0 35px 0;
            }
            .itemName{
                
                text-align: center;
            }
            .card_price{
                text-align: center;
                padding: 5px;
                background-color: #151515;
                color: #ffffff;
                border: 1px solid #151515;
                border-radius: 4px;
                font-size: 24pt;
            }
            hr.style-one {
    border: 0;
    height: 1px;
    background: #333;
    background-image: linear-gradient(to right, #ccc, #333, #ccc);
    width: 600px;
}
  </style>
    </head>
    <body>
        <% try{
            JDBCConnection conn = new JDBCConnection("root", "pineapple");
            conn.getConnection();
            String command = "SELECT proname,prodesc,img_url,price FROM product";
            ResultSet rs = conn.executeQuery(command);
            while(rs.next()){
        %>
         
         <jsp:include page="navbar.jsp" />
            <ul class="sub-nav-buy" id="wrap">
                <li style="float:left;font-size: 14pt;"><p>Pacbook Pro</p></li>
                <li style="float:right;font-size: 14pt;"><a href="buy-pMacBookpro.jsp"><input class="submit-button" type="submit" value="Buy"></a></li>
            </ul>
        <div class="info-product">
            <div class="NameandPrice">
                <div class="itemName">
                    <span style="font-family: 'Oswald', sans-serif;font-size: 24pt;"><%out.print(rs.getString("proname"));%></span><br>
                    <hr class="style-one">
                    <br><br>
                    <span style="font-family: 'Roboto Slab', serif;;font-size: 50pt;"><%out.print(rs.getString("prodesc"));%></span><br><br>
                    
                </div><br>
                <div  style="text-align : center;"> 
                <span class="card_price">$<%out.print(rs.getString("price"));%></span>
                </div>
            </div>
        <div class="test">
            
            <img class="img_test" src = "<%rs.getString("img_url");%>"  >
            
           
            <%}}
            catch (SQLException ex) {
            ex.printStackTrace();
        }  %>
        </div>
            <div class="info-text">
             <p>It’s faster and more powerful than before, 
                yet remarkably thinner and lighter. It has the brightest, most colorful Mac notebook display ever. 
                And it introduces the Touch Bar — a Multi-Touch enabled strip of glass built into the keyboard for 
                instant access to the tools you want, right when you want them. The new MacBook Pro is built on 
                groundbreaking ideas. And it’s ready for yours.</p>
            </div>
             <div class="test" style="height:900px;">
            
            <img class="img_test" src="images/mac/endframe_intro_models_large.jpg"  >
           
           
            
        </div>
             <div class="info-text">
             <p>The Touch Bar replaces the function keys that have long occupied the top of your keyboard with something much more versatile and capable.2 It changes automatically based on what you’re doing to show you relevant tools you already know how to use — system controls like volume and brightness, interactive ways to adjust or browse through content, intelligent typing features like emoji and predictive text, and more. And for the first time, Touch ID is available on a Mac, enabling instant access to logins and fast, secure online purchases with Apple Pay.</p>
            </div>
        </div>
      <jsp:include page="footer.jsp" />
            <script>
    var elementPosition = $('#wrap').offset();

    $(window).scroll(function () {
        if ($(window).scrollTop() > elementPosition.top) {
            $('#wrap').css('position', 'fixed').css('top', '0').css('width','94%');
        } else {
            $('#wrap').css('position', 'static');
        }
     });
</script>
    </body>
    
</html>
