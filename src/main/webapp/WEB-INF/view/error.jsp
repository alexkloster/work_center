<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <meta http-equiv="content-type" content="text/html; charset=cp1251">
    <title>tecno-tab | home</title>

    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>


    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/>


</head>
<body>
<div id="page-container">
    <div class="bg-white" id="content-wrap">
        <c:choose>
            <c:when test="${NAVIGATION_MODE == null}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/welcome">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarResponsive"
                                    aria-controls="navbarResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/welcome"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">О нас</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/login">Войти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>
            <c:when test="${NAVIGATION_MODE == 'user'}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/welcome">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarResponsive"
                                    aria-controls="navbarResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarUserResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/welcome"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/workList">Список вакансий</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/responses">Мои отклики</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/profile">Профиль</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/exit">Выйти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>
            <c:when test="${NAVIGATION_MODE == 'admin'}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/adminPage">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarAdminResponsive"
                                    aria-controls="navbarAdminResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarAdminResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/adminPage"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/users">Работа с пользователями</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/sales">Статистика</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/exit">Выйти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>

        </c:choose>

        <div class="container">
            <H1 > Ошибка!</H1>
            <H2 > Что-то пошло не так</H2>
        </div>


    </div>

    <br>
    <footer class="navbar navbar-dark bg-dark" id="footer">
        <div class="container navbar-text">
            <div class="col-lg-4">
                <div class="copy">© 2019 <span class="nowrap">ЗАО «<a class="spec_decor"
                                                                      href="/welcome">4 Колеса</a>»</span>
                </div>
                <div class="foo_info">
                    Лицензия N31 от 28 мая 2013 года на осуществление
                    торговой деятельности. <br>
                    <br>
                </div>
            </div>

            <div class="col-lg-4">
                <h4>Информация о нас</h4>
                <ul class="foo_nav">
                    <li><a href="" class="undecor">Вакансии</a></li>
                    <li><a href="" class="undecor">О нас</a></li>
                </ul>
                <div class="social_block">
                    <div class="social_block_grid">
                        <a href="" target="_blank"
                           class="social_block_item">
                            <img src="/static/images/social_facebook.svg" alt="facebook">
                        </a>
                        <a href="" target="_blank" class="social_block_item">
                            <img src="/static/images/social_vk.svg" alt="vk">
                        </a>
                        <a href="" target="_blank"
                           class="social_block_item">
                            <img src="/static/images/social_instagram.svg" alt="instargram">
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <h4>Клиенту</h4>
                <ul class="foo_nav">

                    <li><a href="/" class="undecor">Контакты</a></li>

                    <li><a href="/" class="undecor">Как нас найти</a></li>

                    <li><a href="/welcome" class="undecor">4 Колеса онлайн</a></li>

                </ul>
            </div>
        </div>
    </footer>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>