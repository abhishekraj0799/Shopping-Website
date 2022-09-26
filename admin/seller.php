
 <?php  
 $connect = mysqli_connect("localhost", "root", "", "test");  
 session_start();  
?>

    <!DOCTYPE html>
    <html lang="en">
    <head>
          
           <title>Webslesson Tutorial | PHP Login Registration Script by using password_hash() method</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
           <style>
             
                    * {
                    margin: 0px;
                    padding: 0px;
                    box-sizing: border-box;
                    }

                    html {
                    font-size: 62.5%;
                    scroll-behavior: smooth;
                    }

                    body {
                    overflow-x: hidden;
                    color:rgba(0,0,0,0.8);
                    background-color: #fff;
                    font-family: 'Poppins', sans-serif;
                    margin:0;
                    display: flex;
                    flex-direction: column;
                    min-height: 100vh;
                    background-image:linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.3)), url('../back_images/rk1 (4).jpg');
                    background-repeat: no-repeat;
                    background-size: cover;
                    background-position: top-center;
                    /*background-attachment: fixed;*/
                    height: 88.5rem;
                    width: 100%;
                    margin bottom: 0rem;
                    
                    }
                    .container{
                    background: rgba(0,0,0,.4);
                    color: rgba(255,255,255,.8);
                    padding: 3rem;
                    padding-left: 5rem;
                    padding-right: 5rem;
                    }
                    form a{
                    color: coral;
                    }
                    .hmm{
                    padding-top: 5rem;
                    margin-top: 3rem;
                    }
                    .container img{
                    width: 12rem;
                    }
                    form input[type="submit"]{
                    align-items: center;
                    align-content: center;
                    text-align: center;
                    padding: .7rem 17.2rem;
                    border-style: none
                    }

            </style> 

    </head>
    <body>
    <br /><br />  
           <div class="container hmm" style="width:500px;">  
             
                <br />  
                <?php  
               if(isset($_GET["action"]) == "sell"){
                  
                ?> 
                           
                <div align="center"><img src="../images1/logo-white.png"></div>
                <h3 align="center">Seller Login</h3>  
                <br />  
                <form method="post">  
                     <label> Seller Username</label>  
                     <input type="text" name="username" class="form-control" placeholder="Enter Username" required />  
                     <br />  
                     <label> Seller Password</label>  
                     <input type="text" name="password" class="form-control"  placeholder="Enter Password" required/>  
                     <br /> 
                     <label>Confirm Password</label>  
                     <input type="text" name="confirmpassword" class="form-control"  placeholder="Confirm Password" required/>  
                     <br /> 
                     <label>Seller Email</label>  
                     <input type="email" name="email" class="form-control"  placeholder="Enter email " required/>  
                     <br />   
                       
                      
                     <p align="center">By registering, you agree to our <a href="#">User Agreement</a> & <a href="#">privacy policy</a></p> 
                     <div class="sub" >
                     <input type="submit" name="register" value="Admin Register" class="btn btn-danger" style="width: 100%" />
                     </div>  
                     <br />  
                     <p align="center"><a href="VoiceRecog.php">Become a seller</a> or <a href="admin_log.php?action=login">Log In now</a>.</p>  
                     
                </form>         
              
                <?php

                }
               else
                { 

                ?> 
                
                <div align="center"><img src="../images1/logo-white.png"></div>
                             <h3 align="center">Tell us about your business</h3>  
                             <br />  
                             <form method="post">  
                                  <label> Company/Business name</label>  
                                  <input type="text" name="companyname" class="form-control" placeholder="Enter company/business Name" required />  
                                  <br />  
                                  <!-- <label> Admin Password</label>  
                                  <input type="text" name="password" class="form-control"  placeholder="Enter Password" required/>  
                                  <br /> 
                                  <label>Confirm Password</label>  
                                  <input type="text" name="confirmpassword" class="form-control"  placeholder="Confirm Password" required/>  
                                  <br />  -->
                                  <label> Store Name</label>  
                                  <input type="text" name="storename" class="form-control"  placeholder="Enter Store Name" required/>  
                                  <br />
                                  <label> Phone No.</label>  
                                  <input type="number" name="phone" class="form-control" placeholder="Enter Phone Number" required />  
                                  <br /> 
                                  <label>Email</label>  
                                  <input type="email" name="email" class="form-control"  placeholder="Enter email " required/>  
                                  <br />  
                                  <label>Select Product Category</label> 
                                         <select  class="form-control" name="product" placeholder=" Choose primary category," required>
  
                                            <option selected>Clothing Accessories</option>
                                            <option selected>Computer and Accessories </option>
                                            <option selected>Furniture</option>
                                            <option selected>Mobile and Accessories</option>
                                            <option selected>Shoes</option>
                                            <option selected>Tools and Home Improvement</option>
                                            <option selected>Kitchen </option>
                                            <option selected>watches</option>
                                            
                                        
                                        </select> 
                                  
                                  <br /> 
                                  <label>Address</label>  
                                  <input type="text" name="address" class="form-control"  placeholder="Enter picking address " required/>  
                                  <br /> 
                                    
                                   
                                  <p align="center">By registering, you agree to our <a href="#">User Agreement</a> & <a href="#">privacy policy</a></p> 
                                  <div class="sub" >
                                  <input type="submit" name="register" value="Register" class="btn btn-danger" style="width: 100%" />
                                  </div>  
                                  <br />  
                                  <p align="center">Don't have a Account ? <a href="seller.php?action=sell">Log in Now</a>.</p> 
                                  
                             </form>   

                 
            
                <?php  
                }  
                ?>  
           </div>  
        
    </body>
    </html>
