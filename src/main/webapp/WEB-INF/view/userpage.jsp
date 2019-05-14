<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <meta http-equiv="content-type" content="text/html; charset=cp1251">
    <title>tecno-tab | home</title>

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
        <div role="navigation">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
                <div class="container">
                    <a class="navbar-brand" href="/welcome">
                        <img src="static/images/logo.png" alt="" height="50">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
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

        <br>

        <c:choose>
            <c:when test="${mode=='MODE_HOME' }">

                <div class="container text-center">
                    <h3>Множество вакансий на виртуальной бирже труда</h3>
                </div>

                <br>
                <div class="container">


                    <div class="row">
                        <h4>Как быстро устроиться на приятную работу?</h4>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-7">
                            <p>На нашей виртуальной бирже труда ежедневно публикуются самые свежие
                                объявлений о вакансиях от солидных казахстанских и зарубежных компаний.
                                Поэтому чтобы устроиться на высокооплачиваемую работу квалифицированному
                                специалисту в Беларуси, просто необходимо просмотреть объявления о
                                вакансиях либо опубликовать на портале собственное резюме.
                            <p>По мнению большинства работодателей, основными преимуществами
                                этой виртуальной биржи труда являются:
                                <br>

                        </div>
                        <div class="col-lg-5">
                            <img src="static/images/main.jpg" alt="Bank" width="90%"/>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-lg-5">
                            <img src="static/images/main1.jpg" alt="Bank" width="100%"/>
                        </div>
                        <div class="col-lg-7">
                            <br><strong>
                            Большой трафик.</strong>
                            <br>Ежедневно
                            данный веб-ресурс посещают миллионы квалифицированных специалистов в
                            поисках интересных предложений от работодателей. К тому же, можно просто
                            оставить на этом портале свое резюме, указав в нем свои контактные данные и
                            ожидать предложения от работодателей.
                            <br><strong>Огромный выбор вакансий. </strong><br>
                            На этом крупнейшем ресурсе ежедневно публикуются более 6000 новых объявлений о
                            различных вакансиях. На этом сайте могут найти себе работу практически все,
                            начиная от отдельных по-настоящему опытных рабочих и заканчивая самыми известными
                            и ответственными топ-менеджерами. Причем перед публикацией все объявления проходят
                            чрезвычайно тщательную проверку, что полностью исключает возможность обмана со стороны
                            работодателей.</p>
                        </div>
                    </div>
                    <hr>
                </div>

            </c:when>
            <c:when test="${mode=='MODE_WORK_LIST'}">
                <br>
                <div class="container">

                    <form class="form-horizontal col-lg-12" method="POST"
                          action="/filter-offers">
                        <div class="row">
                            <div class="col-lg-4">
                                <label class="control-label col-lg-12">Компания</label>
                                <form:input type="hidden" path="filtering.company.companyId" name="companyIdHidden"
                                            id="companyIdHidden"/>
                                <div class="col-lg-12">
                                    <select class="form-control" id="companySelect">
                                        <option></option>
                                        <c:forEach var="company" items="${companies}">
                                            <option value="${company.id}"><c:out
                                                    value="${company.name}"/></option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <br>

                                <label class="control-label col-lg-12">Город</label>
                                <form:input type="hidden" path="filtering.company.cityId" name="cityIdHidden"
                                            id="cityIdHidden"/>
                                <div class="col-lg-12">
                                    <select class="form-control" id="citySelect">
                                        <option></option>
                                        <c:forEach var="city" items="${cities}">
                                            <option value="${city.id}"><c:out
                                                    value="${city.name}"/></option>
                                        </c:forEach>
                                    </select>
                                </div>

                            </div>
                            <div class="col-lg-4">
                                <div class="col-lg-12">
                                    <div class="float-right"></div>
                                    <form:input type="hidden" path="filtering.salaryFrom"
                                                name="offerSalaryFromHidden"
                                                id="offerSalaryFromHidden" value="1000"/>
                                    <form:input type="hidden" path="filtering.salaryTo"
                                                name="offerSalaryToHidden"
                                                id="offerSalaryToHidden" value="2000"/>
                                    <label class="control-label col-lg-12">Зарплата</label>

                                    <label class="control-label col-lg-4" for="offerSalaryFrom">От:</label>
                                    <input id="offerSalaryFrom" type="number" class="col-lg-8" value="1000" min="500"
                                           max="10000" step="100" data-suffix="$">

                                    <label class="control-label col-lg-4" for="offerSalaryTo">До:</label>
                                    <input id="offerSalaryTo" type="number" class="col-lg-8" value="2000" min="500"
                                           max="10000" step="100" data-suffix="$">
                                </div>
                            </div>
                        </div>

                        <br>

                        <div class="row">

                            <div class="col-lg-6 offset-lg-6">
                                <div class="float-right">
                                    <input type="submit" class="btn btn-primary"
                                           value="Отфильтровать"/>
                                </div>
                            </div>
                        </div>
                    </form>

                    <br>
                    <div class="row">

                        <hr>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>Компания</th>
                                    <th>Вакансия</th>
                                    <th>Город</th>
                                    <th>Номер телефона</th>
                                    <th>Зарплата</th>
                                    <th>Инфо</th>
                                    <th>Откликнуться</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="offer" items="${offers }">
                                    <tr>
                                        <td>${offer.company.name}</td>
                                        <td>${offer.name}</td>
                                        <td>${offer.company.city.name}</td>
                                        <td>${offer.company.phone}</td>
                                        <td>${offer.salary}</td>
                                        <td><a href="/offer-info?id=${offer.id }"><i class="fa fa-info"></i> </a></td>
                                        <td><a href="/response?id=${offer.id }"><i class="fa fa-check"></i> </a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </c:when>

            <c:when test="${mode=='MODE_PROFILE' }">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3">
                            <h3>Изменить личные данные</h3>
                            <hr>
                            <form class="form-horizontal" method="POST" action="/edit-user">
                                <input type="hidden" name="id" value="${user.id}"/>
                                <div class="form-group">
                                    <label class="control-label col-md-3">ФИО</label>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="name"
                                               value="${user.name}"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Логин</label>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="login"
                                               value="${user.login}"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Пароль</label>
                                    <div class="col-md-12">
                                        <input type="password" class="form-control" name="password"
                                               value="${user.password}"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Номер
                                        Телефона</label>
                                    <div class="col-lg-12">
                                        <input type="text"
                                               class="form-control phone"
                                               name="phone"
                                               value="${user.phone }"
                                               required="true"/>
                                    </div>
                                </div>

                                <div class="form-group ">
                                    <input type="submit" class="btn btn-primary" value="Сохранить"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </c:when>

            <c:when test="${mode=='MODE_RESPONSES'}">
                <br>
                <div class="container">

                        <%--                    <form class="form-horizontal col-lg-12" method="POST"--%>
                        <%--                          action="/filter-offers">--%>
                        <%--                        <div class="row">--%>
                        <%--                            <div class="col-lg-4">--%>
                        <%--                                <label class="control-label col-lg-12">Компания</label>--%>
                        <%--                                <form:input type="hidden" path="filtering.company.companyId" name="companyIdHidden"--%>
                        <%--                                            id="companyIdHidden"/>--%>
                        <%--                                <div class="col-lg-12">--%>
                        <%--                                    <select class="form-control" id="companySelect">--%>
                        <%--                                        <option></option>--%>
                        <%--                                        <c:forEach var="company" items="${companies}">--%>
                        <%--                                            <option value="${company.id}"><c:out--%>
                        <%--                                                    value="${company.name}"/></option>--%>
                        <%--                                        </c:forEach>--%>
                        <%--                                    </select>--%>
                        <%--                                </div>--%>

                        <%--                                <br>--%>

                        <%--                                <label class="control-label col-lg-12">Город</label>--%>
                        <%--                                <form:input type="hidden" path="filtering.company.cityId" name="cityIdHidden"--%>
                        <%--                                            id="cityIdHidden"/>--%>
                        <%--                                <div class="col-lg-12">--%>
                        <%--                                    <select class="form-control" id="citySelect">--%>
                        <%--                                        <option></option>--%>
                        <%--                                        <c:forEach var="city" items="${cities}">--%>
                        <%--                                            <option value="${city.id}"><c:out--%>
                        <%--                                                    value="${city.name}"/></option>--%>
                        <%--                                        </c:forEach>--%>
                        <%--                                    </select>--%>
                        <%--                                </div>--%>

                        <%--                            </div>--%>
                        <%--                            <div class="col-lg-4">--%>
                        <%--                                <div class="col-lg-12">--%>
                        <%--                                    <div class="float-right"></div>--%>
                        <%--                                    <form:input type="hidden" path="filtering.salaryFrom"--%>
                        <%--                                                name="offerSalaryFromHidden"--%>
                        <%--                                                id="offerSalaryFromHidden" value="1000"/>--%>
                        <%--                                    <form:input type="hidden" path="filtering.salaryTo"--%>
                        <%--                                                name="offerSalaryToHidden"--%>
                        <%--                                                id="offerSalaryToHidden" value="2000"/>--%>
                        <%--                                    <label class="control-label col-lg-12">Зарплата</label>--%>

                        <%--                                    <label class="control-label col-lg-4" for="offerSalaryFrom">От:</label>--%>
                        <%--                                    <input id="offerSalaryFrom" type="number" class="col-lg-8" value="1000" min="500"--%>
                        <%--                                           max="10000" step="100" data-suffix="$">--%>

                        <%--                                    <label class="control-label col-lg-4" for="offerSalaryTo">До:</label>--%>
                        <%--                                    <input id="offerSalaryTo" type="number" class="col-lg-8" value="2000" min="500"--%>
                        <%--                                           max="10000" step="100" data-suffix="$">--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>

                        <%--                        <br>--%>

                        <%--                        <div class="row">--%>

                        <%--                            <div class="col-lg-6 offset-lg-6">--%>
                        <%--                                <div class="float-right">--%>
                        <%--                                    <input type="submit" class="btn btn-primary"--%>
                        <%--                                           value="Отфильтровать"/>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <%--                    </form>--%>

                    <br>
                    <div class="row">

                        <hr>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>Компания</th>
                                    <th>Вакансия</th>
                                    <th>Город</th>
                                    <th>Номер телефона</th>
                                    <th>Зарплата</th>
                                    <th>Подтверждение</th>
                                    <th>Инфо</th>
                                    <th>Отмена</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="response" items="${responses}">
                                    <tr>
                                        <td>${response.offer.company.name}</td>
                                        <td>${response.offer.name}</td>
                                        <td>${response.offer.company.city.name}</td>
                                        <td>${response.offer.company.phone}</td>
                                        <td>${response.offer.salary}</td>
                                        <c:if test="${response.approved}">
                                            <td><i class="fa fa-check"></i></td>
                                        </c:if>
                                        <c:if test="${!response.approved}">
                                            <td><i class="fa fa-minus"></i></td>
                                        </c:if>
                                        <td><a href="/offer-info?id=${response.id }"><i class="fa fa-info"></i> </a>
                                        </td>
                                        <td><a href="/unResponse?id=${response.id }"><i class="fa fa-minus"></i> </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </c:when>

        </c:choose>
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


<div class="modal fade" id="modelInfoModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Информация о модели</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <label class="control-label col-lg-12"><h5><span id="manufactureModelName"></span></h5></label>
                    <div class="col-lg-6">
                        <label class="control-label col-lg-12"><h6>Производитель</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="manufacture"></span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Тип</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="vehicleType"></span>
                            </div>
                        </div>
                        <br>
                    </div>
                    <div class="col-lg-6">
                        <label class="control-label col-lg-12"><h6>Модель</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="model"></span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Цена</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="price"></span><span>$</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="engineInfoModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Информация о двигателе</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <label class="control-label col-lg-12"><h5><span id="engineName"></span></h5></label>
                    <div class="col-lg-6">
                        <label class="control-label col-lg-12"><h6>Мощность</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="power"></span><span> лс</span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Объем</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="capacity"></span><span> см<sup>3</sup></span>
                            </div>
                        </div>
                        <br>
                    </div>
                    <div class="col-lg-6">
                        <label class="control-label col-lg-12"><h6>Расход топлива</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="consumption"></span><span> л/100км</span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Цена</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="cost"></span><span>$</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/app.js"></script>
<script src="static/js/dist/jquery.inputmask.bundle.js"></script>
<script src="static/js/bootstrap-input-spinner.js"></script>

<script>
    $("input[type='number']").inputSpinner()
</script>

</body>
</html>