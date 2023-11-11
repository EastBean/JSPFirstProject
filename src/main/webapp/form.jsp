<%--
  Created by IntelliJ IDEA.
  User: dbchoi
  Date: 11/7/23
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .index-myBookManager {
        padding-top: 12px;
        width: 300px;
        font-size: 30px;
        font-family: Georgia, 'Times New Roman', Times, serif;
    }

    .index-myBookManager:hover {
        cursor: pointer;
    }

    .footer-content {
        margin-top: 17px;
        color: grey;
        font-size: 12px;
    }

    .footer {
        margin-top: 5%;
        margin-left: 1%;
        display: flex;
    }

    .index-bookList {
        font-size: 20px;
        font-family: Georgia, 'Times New Roman', Times, serif;
        width: 30%;
    }

    .index-line1 {
        box-shadow: 0 4px 4px -4px gray;
        margin-bottom: 2%;
        padding-bottom: 1px;
        display: flex;
        justify-content: space-between;
    }
    .index-line2 {
        display: flex;
        justify-content: space-between;
        box-shadow: 0 4px 4px -4px gray;
        /* margin-bottom: 3%; */
    }

    .add-button {
        margin-right: 5%;
        padding-top: 5px;
        padding-left: 11px;
        width: 50px;
        height: 30px;
        border-radius: 6px;
        background-color: rgba(20, 137, 33, 0.767);
        color: white;
    }

    .add-button:hover {
        cursor: pointer;
    }

    * {
        box-sizing: border-box;
    }

    /* Style the body */
    body {
        font-family: Arial;
        margin: 0;
    }

    /* Style the top navigation bar */
    .navbar {
        margin-top: 10px;
        margin-right: 5px;
        width: 280px;
        right: 0%;
        /* position: absolute; */
        display: flex;
        /* background-color: #333; */
    }

    /* Style the navigation bar links */
    .navbar a {
        height: 40px;
        width: 100px;
        color: royalblue;
        padding-top: 10px;
        text-decoration: none;
        text-align: center;
        border-radius: 10px;
        margin-bottom: 10px;
        margin-left: 1px;
        margin-right: 1px;
    }

    /* Change color on hover */
    .navbar a:hover {
        background-color: royalblue;
        border-radius: 10px;
        color: white;
    }

    /* Column container */
    .row {
        display: flex;
        flex-wrap: wrap;
    }

    /* Create two unequal columns that sits next to each other */
    /* Sidebar/left column */
    .side {
        flex: 30%;
        background-color: #f1f1f1;
        padding: 20px;
    }

    /* Main column */
    .main {
        flex: 70%;
        background-color: white;
        padding: 20px;
    }

    .edit-img {
        margin-top: 4px;
        width: 20px;
        height: 20px;
        margin-right: 5px;
    }

    .edit-img:hover {
        cursor: pointer;
    }

    .delete-img {
        width: 20px;
        height: 20px;
    }

    .delete-img:hover {
        cursor: pointer;
    }

    .value {
        display: flex;
    }

    .grey-line {
        height: 35px;
        display: flex;
        background-color: rgb(235, 235, 235);
        box-shadow: 0 4px 4px -4px rgb(215, 215, 215);
    }

    .white-line {
        height: 35px;
        display: flex;
        background-color: white;
        box-shadow: 0 4px 4px -4px rgb(215, 215, 215);
    }

    .list-number {
        margin-top: 2%;
        display: flex;
        justify-content: center;
    }

    .list-button {
        padding-top: 5px;
        background-color: white;
        color: royalblue;
        text-align: center;
        width: 30px;
        height: 30px;
        margin: 0.5%;
        border-color: #f1f1f1;
    }

    .num {
        margin-top: 10px;
        margin-left: 2%;
        width: 6%;
        /* background-color: blue; */
    }

    .booknum1 {
        margin-top: 10px;
        width: 10%;
        /* background-color: aqua; */
    }
    .booknum {
        margin-top: 10px;
        width: 10%;
        /* background-color: aqua; */
    }


    .title1 {
        margin-top: 10px;
        width: 29%;
        /* background-color: rebeccapurple; */
    }
    .title {
        margin-top: 10px;
        width: 29%;
        /* background-color: rebeccapurple; */
    }

    .author1 {
        margin-top: 10px;
        width: 19%;
        /* background-color: #aaa; */
    }
    .author {
        margin-top: 10px;
        width: 19%;
        /* background-color: #aaa; */
    }

    .publisher1 {
        margin-top: 10px;
        width: 15%;
        /* background-color: cadetblue; */
    }
    .publisher {
        margin-top: 10px;
        width: 15%;
        /* background-color: cadetblue; */
    }

    .publishyear1 {
        margin-top: 10px;
        width: 9%;
        /* background-color: darkcyan; */
    }
    .publishyear {
        margin-top: 10px;
        width: 9%;
        /* background-color: darkcyan; */
    }

    .menu1 {
        margin-left: 3px;
        margin-top: 10px;
        width: 50px;
    }

    .menu {
        margin-top: 3px;
        width: 52px;
    }

    a {
        font-weight: 700;
        text-decoration-line: none;
        color: black;
    }

    /* .value p {
        margin-left: 1%;
        margin-right: 7%;
    } */
    .input-num, .input-booknum, .input-title, .input-author, .input-publisher, .input-year {
        border-radius: 10px;
        width: calc(100vw*360/1440);
        height: calc(100vh*60/820);
    }

    .view-content {
        display: flex;
        margin-left: 5%;
    }

    .view-num,
    .view-booknum,
    .view-title,
    .view-author,
    .view-publisher,
    .view-year {
        border-radius: 10px;
        width: calc(100vw*360/1440);
        height: calc(100vh*60/820);
        border: none;
        padding-left: 10px;
        background-color: antiquewhite;
    }

    .view-num:focus,
    .view-booknum:focus,
    .view-title:focus,
    .view-author:focus,
    .view-publisher:focus,
    .view-year:focus {
        outline: none;
    }

    .comment {
        border-radius: 10px;
        width: calc(100vw*1000/1440);
        height: calc(100vh*150/820);
    }

    .first-row, .second-row{
        padding-left: 2%;
        margin-bottom: 1%;
        padding-right: 2%;
        display: flex;
        justify-content: space-between;
    }

    .third-row {
        padding-left: 2%;
        margin-bottom: 5%;
        padding-right: 2%;
    }

    .last-row {
        padding-left: 2%;
        margin-bottom: 5%;
        padding-right: 2%;
    }

    .add-button2{
        width: calc(100vw*120/1440);
        height: calc(100vh*40/820);
        border-radius: 6px;
        background-color: rgba(20, 137, 33, 0.767);
        color: white;
        margin-right: 2%;
    }

    .reset-button {
        width: calc(100vw*120/1440);
        height: calc(100vh*40/820);
        border-radius: 6px;
        background-color: rgb(246, 130, 130);
        color: white;
    }

    /* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
    @media screen and (max-width: 700px) {

        .row {
            flex-direction: column;
        }

        .navbar {
            width: 100%;
        }

        .navbar a {
            width: 25%;
        }

        .index-line1 {
            box-shadow: 0 4px 4px -4px gray;
            margin-bottom: 5%;
            padding-bottom: 1px;
            flex-direction: column;
        }

        .index-myBookManager {
            width: 100%;
            text-align: center;
            padding-top: 12px;
            font-size: 30px;
        }
    }

    @media screen and (max-width: 400px) {

        .add-button {
            margin-right: 3%;
        }

        .publisher, .publisher1, .publishyear, .publishyear1 {
            display: none;
        }

        .num {
            width: 7%;
        }

        .booknum, .booknum1 {
            width: 15%;
        }

        .title, .title1 {
            width: 38%;
        }

        .author, .author1 {
            width: 24%;
        }

        .row {
            flex-direction: column;
        }

        .navbar {
            width: 100%;
        }

        .navbar a {
            width: 25%;
        }

        .index-line1 {
            box-shadow: 0 4px 4px -4px gray;
            margin-bottom: 5%;
            padding-bottom: 1px;
            flex-direction: column;
        }

        .index-myBookManager {
            width: 100%;
            text-align: center;
            padding-top: 12px;
            font-size: 30px;
        }
    }
</style>
<body>
<form name="form1" onsubmit="return validateFrom()" action="form_ok.jsp" method="post">
    <div class="index-line1">
        <div class="index-myBookManager" onclick="location.href='index.html'">&nbsp;My Book Manager</div>
        <!-- Navigation Bar -->
        <div class="navbar">
            <a href="index.html">Home</a>
            <a href="#">NoStyle</a>
            <a href="#">Example</a>
            <a href="#">About</a>
        </div>
    </div>
    <div class="first-row">
        <div>
            <p><b>&nbsp;number</b></p>
            <input name="number" class="input-num" type="number" placeholder="ex: 3">
        </div>
        <div>
            <p><b>&nbsp;book number</b></p>
            <input name="booknumber" class="input-booknum" type="text" placeholder="ex: 303.12">
        </div>
        <div>
            <p><b>&nbsp;title</b></p>
            <input name="title" class="input-title" type="text" placeholder="ex: 혼자 공부하는 자바">
        </div>
    </div>
    <div class="first-row">
        <div>
            <p><b>&nbsp;page number</b></p>
            <input name="pagenumber" class="input-num" type="text" placeholder="ex: 300">
        </div>
        <div>
            <p><b>&nbsp;price</b></p>
            <input name="price" class="input-booknum" type="text" placeholder="ex: 18000">
        </div>
        <div>
            <p><b>&nbsp;book rating</b></p>
            <input name="rating" class="input-title" type="text" placeholder="0~10, ex: 3">
        </div>
    </div>
    <div class="second-row">
        <div>
            <p><b>&nbsp;author</b></p>
            <input name="author" class="input-author" type="text" placeholder="ex: 신용권">
        </div>
        <div>
            <p><b>&nbsp;publisher</b></p>
            <input name="publisher" class="input-publisher" type="text" placeholder="ex: 한빛미디어">
        </div>
        <div>
            <p><b>&nbsp;publish-year</b></p>
            <input name="year" class="input-year" type="text" placeholder="ex: 2015">
        </div>
    </div>
    <div class="third-row">
        <p><b>&nbsp;comment</b></p>
        <textarea name="comment"e class="comment" placeholder="한줄 평을 입력하세요(선택사항)"></textarea>
    </div>
    <div class="last-row">
        <input class="add-button2" type="submit" value="Add">
        <input class="reset-button" type="reset" value="Reset">
    </div>
    <div class="footer">
        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="48" fill="gray" class="bi bi-c-circle"
             viewBox="0 0 16 16">
            <path
                    d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8Zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM8.146 4.992c-1.212 0-1.927.92-1.927 2.502v1.06c0 1.571.703 2.462 1.927 2.462.979 0 1.641-.586 1.729-1.418h1.295v.093c-.1 1.448-1.354 2.467-3.03 2.467-2.091 0-3.269-1.336-3.269-3.603V7.482c0-2.261 1.201-3.638 3.27-3.638 1.681 0 2.935 1.054 3.029 2.572v.088H9.875c-.088-.879-.768-1.512-1.729-1.512Z" />
        </svg>
        <p class="footer-content">&nbsp;22200733 최동빈 실전 프로젝트 project4</p>
    </div>
</form>
<script>
    function validateFrom() {
        var number = document.form1.number;
        if (number.value == "") {
            alert('번호를 입력하세요');
            number.focus();
            return false;
        }

        var booknumber = document.form1.booknumber;
        if (booknumber.value == "") {
            alert('책 번호를 입력하세요');
            booknumber.focus();
            return false;
        }

        var title = document.form1.title;
        if (title.value == "") {
            alert('제목을 입력하세요');
            title.focus();
            return false;
        }

        var author = document.form1.author;
        if (author.value == "") {
            alert('저자를 입력하세요');
            author.focus();
            return false;
        }

        var publisher = document.form1.publisher;
        if (publisher.value == "") {
            alert('출판사를 입력하세요');
            publisher.focus();
            return false;
        }

        var year = document.form1.year;
        if (year.value == "") {
            alert('출판년도를 입력하세요');
            year.focus();
            return false;
        }

        alert('추가되었습니다');

    }
</script>
</body>
</html>
