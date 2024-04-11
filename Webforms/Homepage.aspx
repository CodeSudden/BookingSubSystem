<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="BookingSubSystem.Webforms.Homepage" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale="1.0">
        <link href="../Stylesheet/Main.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        
        <!-- <link rel="shortcut icon" type="image/png" href="icon.png"> -->
        <title>BUSY HANDS</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="top">
                <img class="logo" src="../Images/Group12.png"/ href="#">
                <asp:button id="button1" runat="server" text="LOGIN" class="button_1" OnClick="button1_Click" />
            </div>

            <div class="tagline">
                <div class="box">
                    <div class="tagline">
                        <h1>MAKING YOUR SPACE</BR>SPARKLE!</h1>
                        <asp:button id="button2" runat="server" text="Book Now" class="button_2" OnClick="button2_Click" />
                    </div>
                </div>

                <div class="box">
                    <div class="about">
                        <h3>ABOUT</h3>
                        <a>Busy Hands is your trusted partner in maintaining a pristine and inviting environment. Our dedicated team of professionals takes pride in transforming cluttered spaces into sparkling havens. Whether it's residential or commercial cleaning, we leave no corner untouched. With Busy Hands, cleanliness meets efficiency, and your satisfaction is our top priority. Let us make your space shine!.
                        </a>
                    </div>
                </div>
            </div>

                
            <div> <!--OFFFFFFFFFFEEEEEERRRRSSSSS-->
                <div id="backgroundForm" class="box3"> <!-- Added class box3 -->
                    <div class="offer">
                        <h3>WE OFFER</h3>
                    </div>

                    <!-- SERVICES -->
                    <div class="services"> <!--1ST SERVICES-->
                        <div class="card">
                            <div class="icon">
                                <i class="fas fa-broom"></i>
                            </div>
                            <h2>BASIC CLEANING HOUSE</h2>
                            <p>This offers thorough and efficient cleaning solutions to ensure a fresh and tidy home environment. 
                                From dusting and vacuuming to bathroom and kitchen sanitation, we handle all essential tasks with precision and care.
                            </p>
                            <asp:Button ID="btnLearnMore" runat="server" Text="Learn More" class="button" OnClientClick="LearnMore(); return false;" OnClick="btnLearnMore_Click" />
                        </div>

                        <div class="card">
                            <div class="icon">
                                <i class="fa-solid fa-spray-can-sparkles"></i>
                            </div>
                            <h2>DEEP CLEANING</h2>
                            <p>This offers a comprehensive solution for even the toughest messes. From detailed scrubbing to sanitizing surfaces, we deliver exceptional results that breathe new life into your home or business.
                            </p>
                            <asp:Button ID="btnLearnMore1" runat="server" Text="Learn More" class="button" OnClientClick="LearnMore1(); return false;" OnClick="btnLearnMore1_Click" />
                        </div>

                        <div class="card">
                            <div class="icon">
                                <i class="fas fa-house"></i>
                            </div>
                            <h2>MOVE-IN/MOVE-OUT CLEANING</h2>
                            <p>Transition seamlessly in this offer. From window washing, floor mopping, removing cobwebs, and cleaning inside cabinets to disinfecting bathrooms, we ensure properties are left sparkling clean for their new occupants.
                            </p>
                            <asp:Button ID="btnLearnMore2" runat="server" Text="Learn More" class="button" OnClientClick="LearnMore2(); return false;" OnClick="btnLearnMore2_Click" />
                            </div>
                        </div>
                </div>
            </div>

            <!-- POPUP FORMS -->
            <div id="popupForm" class="popup-form" runat="server" style="display: none;">
                <div class="close-btn" onclick="closePopup()">X</div>
                    <div class="popup-offers">
                        <h2>BASIC CLEANING HOUSE</h2>
                        <p>This offers thorough and efficient cleaning solutions to ensure a fresh and tidy home environment. 
                            From dusting and vacuuming to bathroom and kitchen sanitation, we handle all essential tasks with precision and care.
                        </p>
                            <br />
                            <br />
                        <p>INCLUSIONS</p>
                            <br />
                            <br />
                        <p>PRICE: ₱999.99</p>
                    </div>
                        <asp:Button ID="btnBookNow" runat="server" class="button" Text="Book Now" OnClick="btnBookNow_Click" />
                        <br />
                        <br/>
                        <asp:Label ID="lblMessage" runat="server" Text=" "></asp:Label>
                        <br/>
            </div>

            <div id="popupForm1" class="popup-form" runat="server" style="display: none;">
                <div class="close-btn" onclick="closePopup1()">X</div>
                <div class="popup-offers">
                    <h2>DEEP CLEANING</h2>
                    <p>This offers a comprehensive solution for even the toughest messes. From detailed scrubbing to sanitizing surfaces, we deliver exceptional results that breathe new life into your home or business.
                    </p>
                        <br />
                        <br />
                    <p>INCLUSIONS</p>
                        <br />
                        <br />
                    <p>PRICE: ₱999.99</p>
                </div>
                    <asp:Button ID="btnBookNow1" runat="server" class="button" Text="Book Now" OnClick="btnBookNow1_Click" />
                    <br />
                    <br/>
                    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                    <br/>
            </div>

            <div id="popupForm2" class="popup-form" runat="server" style="display: none;">
                <div class="close-btn" onclick="closePopup2()">X</div>
                <div class="popup-offers">
                    <h2>MOVE-IN/MOVE-OUT CLEANING</h2>
                    <p>Transition seamlessly in this offer. From window washing, floor mopping, removing cobwebs, and cleaning inside cabinets to disinfecting bathrooms, we ensure properties are left sparkling clean for their new occupants.
                    </p>
                        <br />
                        <br />
                    <p>INCLUSIONS</p>
                        <br />
                        <br />
                    <p>PRICE: ₱999.99</p>
                </div>
                <asp:Button ID="btnBookNow2" runat="server" class="button" Text="Book Now" OnClick="btnBookNow2_Click" />
                <br />
                <br/>
                <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                <br/>
            </div>

            <div class="box"> <!--REVIEWSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS-->
               <section id="testimonials">
                   <div class="testimonial-heading">
                       <span>Comments</span>
                       <h1>Clients Says</h1>
                   </div>
       
                    <div class="testimonial-box-container">
                        <div class="testimonial-box"> <!--1ST COMMENTS-->
                            <div class="box-top">
                                <div class="profile"> <!--profile-->
                                    <div class="profile-img"> <!--picture-->
                                        <img src="../Images/1.jpg" />
                                    </div>
                                    <div class="name-user"> <!--name-->
                                        <strong>Elara Reyes</strong>
                                        <span>@era_reyes34web</span>
                                    </div>
                                </div>
                                <div class="reviews">
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                </div>
                            </div>
                            <!--COMMENTS-->
                            <div class="comment">
                                <P>I've used several cleaning services in the past, but none have compared to the level of cleanliness and professionalism provided by this company. Definitely my go-to from now on!</P>
                            </div>
                        </div>

                        <div class="testimonial-box"> <!--2ND COMMENTS-->
                            <div class="box-top">
                                <div class="profile"> <!--profile-->
                                    <div class="profile-img"> <!--picture-->
                                        <img src="../Images/2.jpg" />
                                    </div>
                                    <div class="name-user"> <!--name-->
                                        <strong>Harper Santos</strong>
                                        <span>@harpsantos_29</span>
                                    </div>
                                </div>
                                <div class="reviews">
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                </div>
                            </div>
                            <!--COMMENTS-->
                            <div class="comment">
                                <P>Exceptional service! The team was thorough, efficient, and left my home sparkling clean. Highly recommended!</P>
                            </div>
                        </div>

                        <div class="testimonial-box"> <!--3RD COMMENTS-->
                            <div class="box-top">
                                <div class="profile"> <!--profile-->
                                    <div class="profile-img"> <!--picture-->
                                        <img src="../Images/3.jpeg" />
                                    </div>
                                    <div class="name-user"> <!--name-->
                                        <strong>Ma. Selene Cruz</strong>
                                        <span>@mariacruzweb</span>
                                    </div>
                                </div>
                                <div class="reviews">
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9734;</i><!--empty star-->
                                </div>
                            </div>
                            <!--COMMENTS-->
                            <div class="comment">
                                <P>The cleaning service was satisfactory. They did a decent job, but there were a few areas they missed. Overall, it was an okay experience.</P>
                            </div>
                        </div>

                        <div class="testimonial-box"> <!--4TH COMMENTS-->
                            <div class="box-top">
                                <div class="profile"> <!--profile-->
                                    <div class="profile-img"> <!--picture-->
                                        <img src="../Images/4.jpg" />
                                    </div>
                                    <div class="name-user"> <!--name-->
                                        <strong>Camille Rivera</strong>
                                        <span>@camilleriveraweb</span>
                                    </div>
                                </div>
                                <div class="reviews">
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9733;</i>
                                    <i>&#9734;</i><!--empty star-->
                                </div>
                            </div>
                            <!--COMMENTS-->
                            <div class="comment">
                                <P>I was amazed at how pristine my house looked after the cleaning crew finished. They paid attention to every detail and exceeded my expectations.
                                </P>
                            </div>
                        </div>
                    </div>
                    <div class="others">
                        <a href="Reviews.aspx">See all reviews</a>
                    <div>
               </section>
           </div>
    
        </form>
        <!-- JavaScript for showing and hiding popup forms -->
        <script src="../Javascript/Services_PopUp.js"></script>
            </body>

    
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>LOCATION</h4>
                    <ul>
                        <li><a>837 Quirino Hwy, Novaliches, Quezon City</a></li>
                    </ul>
                </div>
    
                <div class="footer-col">
                    <h4>CONTACT</h4>
                    <ul>
                        <li><a>@busyhands@gmail.com</a></li>
                        <li><a>09123456789</a></li>
                    </ul>
                </div>
    
                <div class="footer-col">
                    <h4>HOURS</h4>
                    <ul>
                        <li><a>Monday - Saturday</a></li>
                        <li><a>6:00am - 6:00pm</a></li>
                    </ul>
                </div>
    
                <div class="footer-col">
                    <h4>FOLLOW US</h4>
                    <div class="social-link">
                        <a><i class="fab fa-facebook-f"></i></a>
                        <a><i class="fab fa-twitter"></i></a>
                        <a><i class="fab fa-instagram"></i></a>
                    </div>
                </div> 
            </div>
        </div>
    </footer>
</html>