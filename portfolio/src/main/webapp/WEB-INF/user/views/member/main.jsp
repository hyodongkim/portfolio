<!DOCTYPE html>
<html lang="en">

<head>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
    <title>ë©ì¸ íì´ì§</title>

    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">   
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->


    <script>
        // ì¤í¬ë¡¤ ê¸°ë¥ ì ê±°
        window.addEventListener("wheel", function (e) {
            e.preventDefault();
        }, { passive: false });


        //  ì°¸ì¡°íë ìì ë¯¸ë¦¬ íì ë° ì ì¸
        var $html = $("html");
        var page = 1;
        var lastPage = $(".section").length;
        $html.animate({ scrollTop: 0 }, 10);


        // í  êµ´ë¦¬ë©´ ë¤ìíì´ì§, ì´ì  íì´ì§
        $(window).on("wheel", function (e) {

            if ($html.is(":animated")) return;

            if (e.originalEvent.deltaY > 0) {
                if (page == lastPage) return;

                page++;
            } else if (e.originalEvent.deltaY < 0) {
                if (page == 1) return;

                page--;
            }
            var posTop = (page - 1) * $(window).height();

            $html.animate({ scrollTop: posTop });

        });

        // ì¤í¬ë¡¤ ì¤íì´ ìì
        $(function(){

        var link = $('#navbar a.dot');
        link.on('click',function(e){
            
            //href ìì±ì íµí´, section id íê²ì ì¡ì
            var target = $($(this).attr('href')); 
            
            //target sectionì ì¢íë¥¼ íµí´ ê¼­ëê¸°ë¡ ì´ë
            $('html, body').animate({
                scrollTop: target.offset().top
            },600);
            
            //active í´ëì¤ ë¶ì¬
            $(this).addClass('active');

            //ìµì»¤ë¥¼ íµí´ ì´ëí ë, URLì #idê° ë¶ì§ ìëë¡ í¨.
            e.preventDefault();
        });

        $(window).on('scroll',function(){
            findPosition();
        });

        function findPosition(){
            $('section').each(function(){
                if( ($(this).offset().top - $(window).scrollTop() ) < 20){
                    link.removeClass('active');
                    $('#navbar').find('[data-scroll="'+ $(this).attr('id') +'"]').addClass('active');
                }
            });
        }

        findPosition();
        });

        // ì¤í¬ë¡¤ ì¤íì´ ì¢ë£

        


    </script>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-weight: bold;
        }

        html {
            overflow: hidden;
        }

        html, body {
            width: 100%;
            height: 100%;
            background-color: #bfc8d7
        }

        /* íì´ì§ ëë¹ */
        .section {
            width: 100%;
            height: 100%;
            position: relative;
        }

        .section > img {
            /* í  í ë ì¬ë¼ì´ë */
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);

            font-weight: bold;
            text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.6);
        }


        /* í¤ë */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;

            height: 75px;
            padding: 1rem;
            color: white;
            background: rgba(0, 0, 0, 0.8);
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1;
        }

        .a, a:link, a:visited {
            font-size: 25px;
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
        }

        #headerimg {
            width: 90px;
            height: 70px;
        }

        ul li {
            list-style: none;
        }

        #menu {
		font:bold 16px "malgun gothic";
		color:black;
		line-height: 50px; 
		text-align: center;
        }

        #menu > ul > li {
            float:left;
            width:140px;
            position:relative;
        }

        #menu > ul > li > ul {
            width:130px;
            display:none;
            position: absolute;
            font-size:14px;
            background: skyblue;
        }

        #menu > ul > li:hover > ul {
            display:block;
            
        }

        #menu > ul > li > ul > li:hover {
            background: orange;
            transition: ease 1s;
            }
        

        /* í¤ë ì¢ë£ */

        
        /* ì¤í¬ë¡¤ ì¤íì´ */
        .navbar {
            position: fixed;
            z-index: 999;
            top: 50%;
            right: 50px;
            transform: translateY(-50%);
        }

        .navbar .nav-menu {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }

        .navbar .nav-menu li {
            position: relative;
            min-width: 200px;
            text-align: right;
        }

        .navbar .nav-menu li .dot {
            display: block;
            color: #fff;
            padding: 5px 0;
        }

        .navbar .nav-menu li .dot::before,
        .navbar .nav-menu li .dot::after {
            display: block;
            position: absolute;
            content: '';
            border-radius: 50%;
            top: 50%;
            transition: all .3s ease;
        }

        .navbar .nav-menu li .dot::before {
            width: 5px;
            height: 5px;
            right: 0;
            border: 2px solid #181818;
            transform: translateY(-50%);
        }

        .navbar .nav-menu li .dot::after {
            width: 15px;
            height: 15px;
            border: 2px solid #f44336;
            right: -5px;
            transform: translateY(-50%) scale(0);
        }

        .navbar .nav-menu li .dot.active::before,
        .navbar .nav-menu li:hover .dot::before {
            background: #f44336;
            border-color: #f44336;
        }

        .navbar .nav-menu li .dot.active::after,
        .navbar .nav-menu li:hover .dot::after {
            transform: translateY(-50%) scale(1);
        }

        .navbar .nav-menu li .dot span {
            display: inline-block;
            opacity: 0;
            /* font-weight: 700; */
            font-size: 20px;
            letter-spacing: .5px;
            text-transform: capitalize;
            background-color: #f44336;
            padding: 10px 20px;
            border-radius: 3px;
            margin-right: 30px;
            transform: translateX(20px);
            transition: all .3s ease;
        }

        .navbar .nav-menu li .dot span::before {
            display: block;
            position: absolute;
            content: '';
            border-left: 7px solid #f44336;
            border-top: 7px solid transparent;
            border-bottom: 7px solid transparent;
            top: 50%;
            transform: translate(7px, -50%);
            right: 0;
            transition: all .3s ease;
        }

        .navbar .nav-menu li .dot.active span,
        .navbar .nav-menu li:hover .dot span {
            transform: translateX(0px);
            opacity: 1;
        }
        /* ì¤í¬ë¡¤ ì¤íì´ */
        


        /* 2íì´ì§ ë²í¼ */
        #btn1 {
            position: absolute;
            top: 600px;
            left: 20%;
            background-color: #eeafaf;
            width: 100px;
            height: 100px;
        }

        #btn2 {
            position: absolute;
            top: 600px;
            left: 40%;
            background-color: #eeafaf;
            width: 100px;
            height: 100px;
        }

        #btn3 {
            position: absolute;
            top: 600px;
            left: 60%;
            background-color: #eeafaf;
            width: 100px;
            height: 100px;
        }

        #btn4 {
            position: absolute;
            top: 600px;
            left: 80%;
            background-color: #eeafaf;
            width: 100px;
            height: 100px;
        }
        /* 2íì´ì§ ë²í¼ ì¢ë£ */



        /* í¸í° */
        .footer {
            width: 100%;
            height: 200px;
            background: rgba(0, 0, 0, 0.8);
        }

        #footerimg {
            margin: 0;
            margin-left: 50px;
            margin-top: 50px;
        }

        .footer-p {
            margin-left: 100px;
        }

        #footer-p {
            font-size: 30px;
            /* color: black; */
        }

        /* í¸í° ì¢ë£ */








    </style>

</head>

<body>

    <!-- í¤ë -->
    <header class="header">
        <a href="main.html" target="_self">
            <img id="headerimg" src="logo.png" alt="ë©ì¸ ë¡ê³ ">
        </a>

        <div id="menu">
            <ul>
                <li><a href="books-korea.html">ëì</a>
                    <ul>
                        <li><a href="books-korea.html">êµ­ë´</a></li>
                        <li><a href="books-overseas.html">í´ì¸</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        <a class="nav_two" href="favorites.html">ì¦ê²¨ì°¾ê¸°</a>
        
        <a class="nav_three" href="mypage.html">ë§ì´íì´ì§</a>


        <nav>
            <a class="login" href="login.html">ë¡ê·¸ì¸</a>
        </nav>
    </header>
    <!-- í¤ë ì¢ë£ -->
    

    <!-- ì¤í¬ë¡¤ -->
    <!-- Start Nav Section -->
<nav id="navbar" class="navbar">
    <ul class="nav-menu">
      <li>
        <a data-scroll="home" href="#home" class="dot active">
          <span>í</span>
        </a>
      </li>
      <li>
        <a data-scroll="one" href="#one" class="dot">
          <span>íë
          </span>
        </a>
      </li>
      <li>
        <a data-scroll="two" href="#two" class="dot">
          <span>two</span>
        </a>
      </li>
    </ul>
  </nav>
  <!-- End Nav Section -->



    <!-- 1 íì´ì§ -->
    <section id="home" class="section">

        <!-- ìºë¬ì ì¬ë¼ì´ë html ìì -->

        <!-- ìºë¬ì ì¬ë¼ì´ë html ë -->


            <img src="http://placehold.it/800x600" alt="1íì´ì§">

    </section>
    <!-- 1 íì´ì§ ì¢ë£ -->

    <!-- 2íì´ì§ -->
    <section id="one" class="section">

        <!-- ëë¯¸ ì´ë¯¸ì§ -->
        <img src="http://placehold.it/1158x718" alt="2íì´ì§">
        <!-- ë²í¼ -->
        <button id="btn1" class="btn" type="button" onclick="location.href='#'" >1</button>
        <button id="btn2" class="btn" type="button" onclick="location.href='#'" >2</button>
        <button id="btn3" class="btn" type="button" onclick="location.href='#'" >3</button>
        <button id="btn4" class="btn" type="button" onclick="location.href='#'" >4</button>
    </section>

    <!-- 2 íì´ì§ ì¢ë£ -->


    <!-- 3íì´ì§ -->
    <section id="two" class="section">

        <img src="http://placehold.it/1158x718" alt="3íì´ì§">
    </section>

    <!-- 3 íì´ì§ ì¢ë£ -->



    <!-- í¸í° -->
    <footer class="footer">
        <img id="footerimg" src="footerimg.png" alt="ë¶í¤ëí¤">
        <a id="footer-p" class="footer-p" href="login.html">1 : 1 ë¬¸ì</a>
        <a id="footer-p" class="footer-p" href="login.html">ê³µì§ì¬í­</a>
    </footer>
    <!-- í¸í° ì¢ë£ -->




</body>

</body>

</html>