<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Resume - Start Bootstrap Theme</title>
    <link rel="icon" type="image/x-icon" href="/Dosyalar/assets/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/Dosyalar/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">Clarence Taylor</span>
            <span class="d-none d-lg-block">
                <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="/Dosyalar/assets/img/profile.jpg" alt="" /></span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Hakkımda</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Deneyimler</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Eğitim</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Yetenekler</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">Hobiler</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#awards">Projeler</a></li>
            </ul>
        </div>
    </nav>
    <!-- Page Content-->
    <div class="container-fluid p-0">
        <!-- Hakkımda-->
        <%--Textler silinip araç kutusundan labellar eklendi çünkü veritabanından çekilecek--%>
        <section class="resume-section" id="about">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="resume-section-content">
                        <h1 class="mb-0">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AD")%>'></asp:Label>
                            <span class="text-primary">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("SOYAD")%>'></asp:Label></span>
                        </h1>
                        <div class="subheading mb-5">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ADRES")%>'></asp:Label><br />
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("TELEFON")%>'></asp:Label>
                            <br />
                            <a href="mailto:umutcaliskkan@gmail.com">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("MAIL")%>'></asp:Label></a>
                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("KISANOT")%>'></asp:Label>
                            <div class="social-icons">
                                <a class="social-icon" href="https://www.linkedin.com/in/umut-çalışkan-9991a5172/"><i class="fab fa-linkedin-in"></i></a>
                                <a class="social-icon" href="https://github.com/umutcaliskkan"><i class="fab fa-github"></i></a>

                            </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <%--veri tekrar tekrar çekileceği için repeater eklendi--%>
        </section>
        <hr class="m-0" />
        <!-- Deneyimler-->
        <section class="resume-section" id="experience">
            <h2 class="mb-5">DENEYİMLERİM</h2>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class="resume-section-content">

                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("BASLIK")%>'></asp:Label></h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("ALTBASLIK")%>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("ACIKLAMA")%>'></asp:Label>
                            </div>
                            <div class="flex-shrink-0">
                                <span class="text-primary">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("TARIH")%>'></asp:Label></span>
                            </div>
                        </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <hr class="m-0" />
        <!-- Eğitim-->
        <section class="resume-section" id="education">
            <h2 class="mb-5">Eğitim</h2>
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <div class="resume-section-content">

                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("BASLIK")%>'></asp:Label></h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("ALTBASLIK")%>'></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("ACIKLAMA")%>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("GNOT")%>'></asp:Label>
                                </p>
                            </div>
                            <div class="flex-shrink-0">
                                <span class="text-primary">
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("TARIH")%>'></asp:Label></span>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <hr class="m-0" />
        <!-- Yetenekler-->
        <section class="resume-section" id="skills">
            <div class="resume-section-content">
                <h2 class="mb-5">Skills</h2>
                <div class="subheading mb-3">Programming Languages & Tools</div>
                <ul class="list-inline dev-icons">
                    <li class="list-inline-item"><i class="fab fa-html5"></i></li>
                    <li class="list-inline-item"><i class="fab fa-css3-alt"></i></li>
                    <li class="list-inline-item"><i class="fab fa-js-square"></i></li>
                    <li class="list-inline-item"><i class="fab fa-angular"></i></li>
                    <li class="list-inline-item"><i class="fab fa-react"></i></li>
                    <li class="list-inline-item"><i class="fab fa-node-js"></i></li>
                    <li class="list-inline-item"><i class="fab fa-sass"></i></li>
                    <li class="list-inline-item"><i class="fab fa-less"></i></li>
                    <li class="list-inline-item"><i class="fab fa-wordpress"></i></li>
                    <li class="list-inline-item"><i class="fab fa-gulp"></i></li>
                    <li class="list-inline-item"><i class="fab fa-grunt"></i></li>
                    <li class="list-inline-item"><i class="fab fa-npm"></i></li>
                </ul>
                <div class="subheading mb-3">Workflow</div>
                <ul class="fa-ul mb-0">
                    <li>
                        <span class="fa-li"><i class="fas fa-check"></i></span>
                        Mobile-First, Responsive Design
                    </li>
                    <li>
                        <span class="fa-li"><i class="fas fa-check"></i></span>
                        Cross Browser Testing & Debugging
                    </li>
                    <li>
                        <span class="fa-li"><i class="fas fa-check"></i></span>
                        Cross Functional Teams
                    </li>
                    <li>
                        <span class="fa-li"><i class="fas fa-check"></i></span>
                        Agile Development & Scrum
                    </li>
                </ul>
            </div>
        </section>
        <hr class="m-0" />
        <!-- Hobiler-->
        <section class="resume-section" id="interests">
            <div class="resume-section-content">
                <h2 class="mb-5">Interests</h2>
                <p>Apart from being a web developer, I enjoy most of my time being outdoors. In the winter, I am an avid skier and novice ice climber. During the warmer months here in Colorado, I enjoy mountain biking, free climbing, and kayaking.</p>
                <p class="mb-0">When forced indoors, I follow a number of sci-fi and fantasy genre movies and television shows, I am an aspiring chef, and I spend a large amount of my free time exploring the latest technology advancements in the front-end web development world.</p>
            </div>
        </section>
        <hr class="m-0" />
        <!-- Projeler-->
        <section class="resume-section" id="awards">
            <div class="resume-section-content">
                <h2 class="mb-5">Awards & Certifications</h2>
                <ul class="fa-ul mb-0">
                    <li>
                        <span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>
                        Google Analytics Certified Developer
                    </li>
                    <li>
                        <span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>
                        Mobile Web Specialist - Google Certification
                    </li>
                    <li>
                        <span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>
                        1
                            <sup>st</sup>
                        Place - University of Colorado Boulder - Emerging Tech Competition 2009
                    </li>
                    <li>
                        <span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>
                        1
                            <sup>st</sup>
                        Place - University of Colorado Boulder - Adobe Creative Jam 2008 (UI Design Category)
                    </li>
                    <li>
                        <span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>
                        2
                            <sup>nd</sup>
                        Place - University of Colorado Boulder - Emerging Tech Competition 2008
                    </li>
                    <li>
                        <span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>
                        1
                            <sup>st</sup>
                        Place - James Buchanan High School - Hackathon 2006
                    </li>
                    <li>
                        <span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>
                        3
                            <sup>rd</sup>
                        Place - James Buchanan High School - Hackathon 2005
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Third party plugin JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <!-- Core theme JS-->
    <script src="Dosyalar/js/scripts.js"></script>
</body>
</html>
