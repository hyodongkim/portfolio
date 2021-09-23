<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>1:1문의 답변</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        *{
            margin: 0; padding: 0;
        }
        #wrap{
            position: absolute;
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: row;
            align-content: flex-start;
        }
        a img{
            height: 150px;
            width: 150px;
        }
        #logo{
            height: 150px;
        }
        nav{
            width: 150px;
            height: 100%;
            display: flex;
            flex-direction:column;
            justify-content: space-between;

        }
        #nav1{
            display: flex;
            flex-direction: column;
            height: 400px;
            width: 150px;
            list-style-type: none;
        }
        #nav2{
            display: flex;
            flex-direction: column;
            height: 100px;
            width: 150px;
            list-style-type: none;
        }
        ul li{
            display: flex;
            width: 150px;
            height: 50px;
            align-items: center;
            cursor: pointer;
            border: black 1px solid;
        }
        li a{
            text-decoration: none;
            font-size: 16pt;
            color: black;
        }
    </style>
    <script type="text/javascript">
        function writeForm(){
            location.href="BoardWriteForm.bo";
        }
    </script>
</head>
<body>
    <div id="wrap">
        <nav>
            <ul id="nav1">
                <li id="logo"><a href="admin_member.jsp"><img src="./img/logo.png" alt="로고"></a></li>
                <li><a href="admin_member.html">회원정보</a></li>
                <li><a href="admin_book.html">도서정보</a></li>
                <li><a href="admin_review.html">리뷰관리</a></li>
                <li><a href="admin_qna.html">1:1문의</a></li>
                <li><a href="admin_notice.html">공지사항</a></li>
            </ul>
            <ul id="nav2">
                <li><a href="">회원정보 변경</a></li>
                <li><a href="admin.html">로그아웃</a></li>
            </ul>
        </nav>
        <table class="table table-hover">
            <Thead>
                <tr>
                    <th>번호</th>
                    <th>질문자</th>
                    <th>제목</th>
                    <th>날짜</th>
                    <th>처리 여부</th>
                    <th>완료 날짜</th>
                </tr>
            </Thead>
            <c:forEach var="hp_Qna" items="${requestScope.list}">
                <tr>
                    <td>${hp_Qna.qna_Index}</td>
                    <td>${hp_Qna.hp_Id}</td>
                    <td>${hp_Qna.qna_Title}</td>
                    <td>${hp_Qna.qna_Date}</td>
                    <td>${hp_Qna.qna_answer_Check}</td>
                    <td>?</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>