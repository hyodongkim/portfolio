<!DOCTYPE html>
<html lang="en">
<head>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="euc-kr"%> 
 
    <title>ëì ìì¸ íì´ì§</title>



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
            position: relative;
        }



        /* ëì ì´ë¯¸ì§ */
        .section {
            height: 3000px;
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
                <li><a href="#">ëì</a>
                    <ul>
                        <li><a href="#">êµ­ë´</a></li>
                        <li><a href="#">í´ì¸</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        <a class="nav_two" href="#">ì¦ê²¨ì°¾ê¸°</a>
        <a class="nav_three" href="#">ë§ì´íì´ì§</a>


        <nav>
            <a class="login" href="login.html">ë¡ê·¸ì¸</a>
        </nav>
    </header>
    <!-- í¤ë ì¢ë£ -->

    

    
    <!-- ëì ëª©ë¡ -->
    <section id="one" class="section">

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