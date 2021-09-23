<!DOCTYPE html>
<html lang="en">
<head>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
   
    <title>êµ­ì¸ ëì</title>



    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            /* font-size: 32px; */
            font-weight: bold;
        }

        html, body {
            width: 100%;
            height: 100%;
            background-color: #bfc8d7
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

        a, a:link, a:visited {
            font-size: 25px;
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
        }

        #headerimg {
            width: 90px;
            height: 70px;
        }

        #books {
            font-size: 30px;
            font-weight: bold;
            color: black;
        }


        /* í¤ë ëë¡­ë°ì¤ */
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


        /* íì´ì§ ëë¹ */
        section {
            width: 100%;
            height: 100%;
            position: relative;
        }



        /* ëì ì´ë¯¸ì§ */
        .section {
            display: flex;
            flex-wrap: wrap;
        }

        .box {
            margin-top: 100px;
            margin-left: 100px;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
        }

        .box > p {
            text-align: center;
            
        }



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
                <li><a id="books" href="books-korea.html">ëì</a>
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

    

    <!-- ëì ëª©ë¡ -->
    <section id="one" class="section">
        <div id="box1" class="box"><img src="http://placehold.it/150x200" alt="ëì"><p>1ë²ëì</p></div>
        <div id="box2" class="box"><img src="http://placehold.it/150x200" alt="ëì"><p>2ë²ëì</p></div>
        <div id="box3" class="box"><img src="http://placehold.it/150x200" alt="ëì"><p>3ë²ëì</p></div>
        <div id="box4" class="box"><img src="http://placehold.it/150x200" alt="ëì"><p>4ë²ëì</p></div>
        <div id="box5" class="box"><img src="http://placehold.it/150x200" alt="ëì"><p>5ë²ëì</p></div>
        <div id="box6" class="box"><img src="http://placehold.it/150x200" alt="ëì"><p>6ë²ëì</p></div>
        <div id="box7" class="box"><img src="http://placehold.it/150x200" alt="ëì"><p>7ë²ëì</p></div>
        <div id="box8" class="box"><img src="http://placehold.it/150x200" alt="ëì"><p>8ë²ëì</p></div>
        <div id="box9" class="box"><img src="http://placehold.it/150x200" alt="ëì"><p>9ë²ëì</p></div>
        <div id="box10" class="box"><img src="http://placehold.it/150x200" alt="ëì"><p>10ë²ëì</p></div>
    </section>
    <!-- ëì ëª©ë¡ ì¢ë£ -->

    <!-- í¸í° -->
    <footer class="footer">
        <img id="footerimg" src="footerimg.png" alt="ë¶í¤ëí¤">
        <a id="footer-p" class="footer-p" href="login.html">1 : 1 ë¬¸ì</a>
        <a id="footer-p" class="footer-p" href="login.html">ê³µì§ì¬í­</a>
    </footer>
    <!-- í¸í° ì¢ë£ -->

</body>
</html>