<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderFood.aspx.cs" Inherits="WebApplicationDBMS.OrderFood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      
      body { -webkit-font-smoothing: antialiased; text-rendering: optimizeLegibility; font-family: 'Lato', sans-serif; letter-spacing: 0px; font-size: 16px; color: #6e726e; font-weight: 400; line-height: 27px; background-color:rosybrown }
      .page-txt {
            color: black;
        }

.menu-block { margin-bottom: 30px; }
.menu-title { border-bottom: 3px solid #e0e6e3; margin-bottom: 36px; padding-bottom: 10px; }
.menu-content { border-bottom: 1px solid #e0e6e3; margin-bottom: 30px; }
.dish-img {  }
.dish-content { margin-top: 12px; margin-bottom: 40px; }
.dish-meta { font-size: 12px; text-transform: uppercase; display: block; width: 210px; line-height: 1.7; }
.dish-title { margin-bottom: 6px; font-size: 15px; text-transform: uppercase; font-weight: 500; position: relative; }
.dish-price { position: absolute; right: 16px; top: 0px; font-size: 26px; color: #e03c23; font-weight: 500; font-family: 'Zilla Slab', serif;
            height: 261px;
            width: 146px;
        }
.well-block .dish-meta { width: 100%; }
.well-block .dish-price { font-size: 26px; color: #e03c23; font-weight: 500; font-family: 'Zilla Slab', serif; position: inherit; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center
                ">
                    <div class="page-section">
                        <table>
                            <tr>
                                <h1 class="page-txt">Food Menu</h1>
                             </tr>  
                            <tr>  
                              <p class="page-txt">Call And Order: 4391739586</p>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- starter -->
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb40">
                    <div class="menu-block">
                        <h3 class="page-txt">Starter</h3>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="dish-img"><a href="#"><img src="https://www.vegrecipesofindia.com/wp-content/uploads/2022/07/aloo-tikki-1.jpg" alt="Placeholder Image" width="70" height="70" class="rounded-circle"></a></div>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="#">Aloo and Dal ki Tikki</a></h5>
                                        <span class="page-txt">Onion  /  Tomato</span>
                                    </div>
                                 </div>
                            </div>
                        </div>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="dish-img"><a href="#"><img src="https://www.indianhealthyrecipes.com/wp-content/uploads/2022/03/cheese-balls.jpg" alt="Placeholder Image" width="70" height="70" class="rounded-circle"></a></div>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="#">Cheese Balls</a></h5>
                                        <span class="page-txt">puffed corn  /  cheese-flavored  </span>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="dish-img"><a href="#"><img src="https://ranveerbrar.com/wp-content/uploads/2022/06/Veg-crispy.jpg" alt="Placeholder Image" width="70" height="70" class="rounded-circle"></a></div>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="#">Veg Crispy</a> </h5>
                                        <span class="page-txt">Ginger garlic /  Black pepper</span>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.starter -->
                <!-- Soup -->
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb40">
                    <div class="menu-block">
                        <h3 class="page-txt">Soup</h3>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="dish-img"><a href="#"><img src="https://www.eatingbirdfood.com/wp-content/uploads/2021/11/minestrone-soup-hero.jpg" alt="Placeholder Image" width="70" height="70" class="rounded-circle"></a></div>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="#">Minestrone</a></h5>
                                        <span class="page-txt"> beans  / onions celery / carrots</span>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="dish-img"><a href="#"><img src="https://www.funfoodfrolic.com/wp-content/uploads/2020/10/Tomato-Soup-Thumbnail.jpg" alt="Placeholder Image" width="70" height="70" class="rounded-circle"></a></div>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="#">Tomato soup</a></h5>
                                        <span class="page-txt">Cheesiy   / Creamy  /  Sweet</span>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="dish-img"><a href="#"><img src="https://static.diabetesfoodhub.org/system/thumbs/system/images/recipes/shutterstock_514630984_748886560.jpg" alt="Placeholder Image" width="70" height="70" class="rounded-circle"></a></div>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="#">Cream of broccoli</a> </h5>
                                        <span class="page-txt"> broccoli /  milk  / cream </span>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.soup -->
                <!-- main course -->
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb40">
                    <div class="menu-block">
                        <h3 class="page-txt">Main Course</h3>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="dish-img"><a href="#"><img src="https://www.cubesnjuliennes.com/wp-content/uploads/2020/07/Chicken-Biryani-Recipe.jpg" alt="Placeholder Image" width="70" height="70" class="rounded-circle"></a></div>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="#">Biryani</a></h5>
                                        <span class="page-txt"> Onion  /  Tomato</span>
                                        <div class="dish-price">
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="dish-img"><a href="#"><img src="https://www.cookwithmanali.com/wp-content/uploads/2019/05/Paneer-Butter-Masala.jpg" alt="Placeholder Image" width="70" height="70" class="rounded-circle"></a></div>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="#">Paneer Butter Masala</a></h5>
                                        <span class="page-txt">Aloo Masala  /  Aloo Palak 
</span>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="dish-img"><a href="#"><img src="https://i0.wp.com/swadisht.life/en/wp-content/uploads/2023/02/Chole-Bhature-Recipe.jpg" alt="Placeholder Image" width="70" height="70" class="rounded-circle"></a></div>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="#">Chole Bhature</a> </h5>
                                        <span class="page-txt"> Rice Soft Idli  /  Ragi idli  /  Oats Idli </span>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.main Course -->
            </div>
           </div>
    </div>
    <!-- /.menu -->
        </div>
    </form>
</body>
</html>
