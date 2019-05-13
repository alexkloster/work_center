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
<div class="page-container bg-light">
    <div class="content-wrap bg-white">
        <div role="navigation">
            <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                <div class="container">
                    <a class="navbar-brand" href="/userPage">
                        <img src="static/images/logo.png" alt="" height="50">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="/userPage"><i class="fa fa-home"></i> </a>
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
                    <h3>Добро пожаловать в наш автосалон!</h3>
                </div>

                <br>
                <div class="container">

                    <div class="row">
                        <div class="col-lg-6">
                            <p>С 2007 года Автосалон «4КОЛЕСА» — лидер в услуге срочный выкуп
                                автомобилей. Если вам нужно быстро продать автомобиль в Минске
                                или любом другом городе, мы вам поможем.&nbsp; Продать
                                автомобиль дорого — не значит&nbsp; продать его безопасно.
                                Только наш Автосалон гарантирует&nbsp; полную безопасность и
                                легальность сделки при скупке авто. Куплю-продажу автомобилей мы
                                оформляем в соответствии с законодательством.</p>
                            <p><strong>Ждем вас!</strong></p>
                            <p>&nbsp;</p>
                        </div>
                        <div class="col-lg-6">
                            <img src="static/images/main.jpg" alt="Bank" width="100%"/>
                        </div>

                    </div>

                    <hr>


                    <div class="row">
                        <div class="col-lg-6">
                            <img src="static/images/main1.jpg" alt="Bank" width="100%"/>
                        </div>
                        <div class="col-lg-6">
                            <h2 class="text-red">Совершенство в деталях!</h2>
                            <p> При создании нового поколения SKODA Superb на всех этапах от чертежей
                                до производственной линии использовался восхитительный язык дизайна,
                                созданный на основе дизайна концепт-кара VisionC, произведенного компанией SKODA.
                                В результате получилась по-настоящему эффектная модель с ярким, рельефным обликом —
                                отличающаяся сбалансированностью, экспрессивностью и эмоциональной насыщенностью
                                по сравнению с предшественниками.</p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-6">
                            <img src="static/images/main2.jpg" alt="Bank" width="100%"/>
                        </div>
                        <div class="col-lg-6">
                            <h2 class="text-red">Предложение месяца</h2>
                            <p> При создании нового поколения SKODA Superb на всех этапах от чертежей
                                до производственной линии использовался восхитительный язык дизайна,
                                созданный на основе дизайна концепт-кара VisionC, произведенного компанией SKODA.
                                В результате получилась по-настоящему эффектная модель с ярким, рельефным обликом —
                                отличающаяся сбалансированностью, экспрессивностью и эмоциональной насыщенностью
                                по сравнению с предшественниками.</p>
                        </div>
                    </div>
                </div>

            </c:when>
            <c:when test="${mode=='MODE_WORK_LIST'}">
                <br>
                <form class="form-horizontal col-lg-12" method="POST"
                      action="/filter-orders">
                    <div class="row">
                        <div class="col-lg-4">
                            <label class="control-label col-lg-12">Пользователь</label>
                            <form:input type="hidden" path="filtering.userId" name="userId"
                                        id="userId"/>
                            <div class="col-lg-12">
                                <select class="form-control" id="userSelect">
                                    <option></option>
                                    <c:forEach var="user" items="${users}">
                                        <option value="${user.id}"><c:out
                                                value="${user.name}"/></option>
                                    </c:forEach>
                                </select>
                            </div>

                            <br>

                            <label class="control-label col-lg-12">Марка</label>
                            <form:input type="hidden" path="filtering.manufactureId" name="manufactureId"
                                        id="manufactureId"/>
                            <div class="col-lg-12">
                                <select class="form-control" id="manufactureSelect">
                                    <option></option>
                                    <c:forEach var="manufacture" items="${manufactures}">
                                        <option value="${manufacture.id}"><c:out
                                                value="${manufacture.name}"/></option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="col-lg-4">
                            <label class="control-label col-lg-12">Клиент</label>
                            <form:input type="hidden" path="filtering.clientId" name="clientId"
                                        id="clientId"/>
                            <div class="col-lg-12">
                                <select class="form-control" id="clientSelect">
                                    <option></option>
                                    <c:forEach var="client" items="${clients}">
                                        <option value="${client.id}"><c:out
                                                value="${client.name}"/></option>
                                    </c:forEach>
                                </select>
                            </div>

                            <br>


                            <label class="control-label col-lg-12">Модель</label>
                            <form:input type="hidden" path="filtering.modelId" name="modelId"
                                        id="modelId"/>
                            <div class="col-lg-12">
                                <select class="form-control" id="modelSelect">
                                    <option></option>
                                    <c:forEach var="model" items="${models}">
                                        <option value="${model.id}"><c:out
                                                value="${model.name}"/></option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <label class="control-label col-lg-12">Готовность</label>
                            <form:input type="hidden" path="filtering.ready" name="readyFilter"
                                        id="readyFilter"/>
                            <div class="col-lg-12">
                                <select class="form-control" id="readySelect">
                                    <option value="null"></option>
                                    <option value="true"><c:out value="Готов"/></option>
                                    <option value="false"><c:out value="Не готов"/></option>
                                </select>
                            </div>

                            <br>


                            <label class="control-label col-lg-12">Двигатель</label>
                            <form:input type="hidden" path="filtering.engineId" name="engineId"
                                        id="engineId"/>
                            <div class="col-lg-12">
                                <select class="form-control" id="engineSelect">
                                    <option></option>
                                    <c:forEach var="engine" items="${engines}">
                                        <option value="${engine.id}"><c:out
                                                value="${engine.name}"/></option>
                                    </c:forEach>
                                </select>
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
                                    <td>${offer.company.city}</td>
                                    <td>${offer.company.phone}</td>
                                    <td>${offer.salary}</td>
                                    <td><a href="/engine-edit?id=${engine.id }"><i class="fa fa-edit"></i> </a></td>
                                    <td><a href="/response?id=${offer.id }"><i class="fa fa-check"></i> </a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </c:when>
        </c:choose>
    </div>


    <br>
    <footer class="navbar navbar-light bg-light">
        <div class="container bg-light">
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
<script src="static/js/engine.js"></script>
<script src="static/js/model.js"></script>
<script src="static/js/auto.js"></script>
<script src="static/js/dist/jquery.inputmask.bundle.js"></script>
<script src="static/js/bootstrap-input-spinner.js"></script>

<script>
    $("input[type='number']").inputSpinner()
</script>

</body>
</html>