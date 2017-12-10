<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"
    />
    <title>Bootstrap3响应式后台管理系统模版MeAdmin</title>
    <link href="../../resource/common/css/bootstrap.min.css" rel="stylesheet" type="text/css"
    />
    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="../../resource/plugin/jquery-ui/jquery.ui.1.10.2.ie.css"
    />
    <![endif]-->
    <link href="../../resource/plugin/webmodule/assets/css/main.css" rel="stylesheet" type="text/css"/>
    <link href="../../resource/plugin/webmodule/assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="../../resource/plugin/webmodule/assets/css/responsive.css" rel="stylesheet" type="text/css"
    />
    <link href="../../resource/plugin/webmodule/assets/css/icons.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="../../resource/plugin/webmodule/assets/css/fontawesome/font-awesome.min.css">
    <!--[if IE 7]>
    <link rel="stylesheet" href="../../resource/plugin/webmodule/assets/css/fontawesome/font-awesome-ie7.min.css">
    <![endif]-->
    <!--[if IE 8]>
    <link href="../../resource/plugin/webmodule/assets/css/ie8.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <%--<link href='http://fonts.useso.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>--%>
    <script type="text/javascript" src="../../resource/plugin/webmodule/assets/js/libs/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/jquery-ui/jquery-ui-1.10.2.custom.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/bootstrap/js/bootstrap.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/webmodule/assets/js/libs/lodash.compat.min.js">
    </script>
    <!--[if lt IE 9]>
    <script src="../../resource/plugin/webmodule/assets/js/libs/html5shiv.js">
    </script>
    <![endif]-->
    <script type="text/javascript" src="../../resource/plugin/touchpunch/jquery.ui.touch-punch.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/event.swipe/jquery.event.move.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/event.swipe/jquery.event.swipe.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/webmodule/assets/js/libs/breakpoints.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/respond/respond.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/cookie/jquery.cookie.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/slimscroll/jquery.slimscroll.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/slimscroll/jquery.slimscroll.horizontal.min.js">
    </script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="../../resource/plugin/flot/excanvas.min.js">
    </script>
    <![endif]-->
    <script type="text/javascript" src="../../resource/plugin/sparkline/jquery.sparkline.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/flot/jquery.flot.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/flot/jquery.flot.tooltip.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/flot/jquery.flot.resize.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/flot/jquery.flot.time.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/flot/jquery.flot.growraf.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/daterangepicker/moment.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/daterangepicker/daterangepicker.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/blockui/jquery.blockUI.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/fullcalendar/fullcalendar.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/noty/jquery.noty.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/noty/layouts/top.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/noty/themes/default.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/uniform/jquery.uniform.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/select2/select2.min.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/webmodule/assets/js/app.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/webmodule/assets/js/plugins.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/webmodule/assets/js/plugins.form-components.js">
    </script>
    <script>
        $(document).ready(function () {
            App.init();
            Plugins.init();
            FormComponents.init()
        });
    </script>
    <script type="text/javascript" src="../../resource/plugin/webmodule/assets/js/custom.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/webmodule/assets/js/demo/pages_calendar.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/webmodule/assets/js/demo/charts/chart_filled_blue.js">
    </script>
    <script type="text/javascript" src="../../resource/plugin/webmodule/assets/js/demo/charts/chart_simple.js">
    </script>
</head>
<body>
<header class="header navbar navbar-fixed-top" role="banner">
    <div class="container">
        <ul class="nav navbar-nav">
            <li class="nav-toggle">
                <a href="javascript:void(0);" title="">
                    <i class="icon-reorder">
                    </i>
                </a>
            </li>
        </ul>
        <a class="navbar-brand" href="index.html">
            <img src="../../resource/plugin/webmodule/assets/img/logo.png" alt="logo"/>
            <strong>
                Me
            </strong>
            Admin
        </a>
        <a href="#" class="toggle-sidebar bs-tooltip" data-placement="bottom"
           data-original-title="Toggle navigation">
            <i class="icon-reorder">
            </i>
        </a>
        <ul class="nav navbar-nav navbar-left hidden-xs hidden-sm">
            <li>
                <a href="#">
                    控制台
                </a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    下拉菜单
                    <i class="icon-caret-down small">
                    </i>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">
                            <i class="icon-user">
                            </i>
                            实例#1
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-calendar">
                            </i>
                            实例#2
                        </a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-tasks">
                            </i>
                            实例#3
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-warning-sign">
                    </i>
                    <span class="badge">
                5
              </span>
                </a>
                <ul class="dropdown-menu extended notification">
                    <li class="title">
                        <p>
                            你有5条通知信息。
                        </p>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="label label-success">
                    <i class="icon-plus">
                    </i>
                  </span>
                            <span class="message">
                    新用户注册.
                  </span>
                            <span class="time">
                    1分钟之前
                  </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="label label-danger">
                    <i class="icon-warning-sign">
                    </i>
                  </span>
                            <span class="message">
                    High CPU load on cluster #2.
                  </span>
                            <span class="time">
                    5 mins
                  </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="label label-success">
                    <i class="icon-plus">
                    </i>
                  </span>
                            <span class="message">
                    New user registration.
                  </span>
                            <span class="time">
                    10 mins
                  </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="label label-info">
                    <i class="icon-bullhorn">
                    </i>
                  </span>
                            <span class="message">
                    New items are in queue.
                  </span>
                            <span class="time">
                    25 mins
                  </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="label label-warning">
                    <i class="icon-bolt">
                    </i>
                  </span>
                            <span class="message">
                    Disk space to 85% full.
                  </span>
                            <span class="time">
                    55 mins
                  </span>
                        </a>
                    </li>
                    <li class="footer">
                        <a href="javascript:void(0);">
                            View all notifications
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown hidden-xs hidden-sm">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-tasks">
                    </i>
                    <span class="badge">
                7
              </span>
                </a>
                <ul class="dropdown-menu extended notification">
                    <li class="title">
                        <p>
                            你有7条开展中的任务
                        </p>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="task">
                    <span class="desc">
                      Preparing new release
                    </span>
                    <span class="percent">
                      30%
                    </span>
                  </span>
                            <div class="progress progress-small">
                                <div style="width: 30%;" class="progress-bar progress-bar-info">
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="task">
                    <span class="desc">
                      Change management
                    </span>
                    <span class="percent">
                      80%
                    </span>
                  </span>
                            <div class="progress progress-small progress-striped active">
                                <div style="width: 80%;" class="progress-bar progress-bar-danger">
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="task">
                    <span class="desc">
                      Mobile development
                    </span>
                    <span class="percent">
                      60%
                    </span>
                  </span>
                            <div class="progress progress-small">
                                <div style="width: 60%;" class="progress-bar progress-bar-success">
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="task">
                    <span class="desc">
                      Database migration
                    </span>
                    <span class="percent">
                      20%
                    </span>
                  </span>
                            <div class="progress progress-small">
                                <div style="width: 20%;" class="progress-bar progress-bar-warning">
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="footer">
                        <a href="javascript:void(0);">
                            View all tasks
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown hidden-xs hidden-sm">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-envelope">
                    </i>
                    <span class="badge">
                1
              </span>
                </a>
                <ul class="dropdown-menu extended notification">
                    <li class="title">
                        <p>
                            你有3条新消息
                        </p>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="photo">
                    <img src="../../resource/plugin/webmodule/assets/img/demo/avatar-1.jpg" alt=""/>
                  </span>
                            <span class="subject">
                    <span class="from">
                      Bob Carter
                    </span>
                    <span class="time">
                      Just Now
                    </span>
                  </span>
                            <span class="text">
                    Consetetur sadipscing elitr...
                  </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="photo">
                    <img src="../../resource/plugin/webmodule/assets/img/demo/avatar-2.jpg" alt=""/>
                  </span>
                            <span class="subject">
                    <span class="from">
                      Jane Doe
                    </span>
                    <span class="time">
                      45 mins
                    </span>
                  </span>
                            <span class="text">
                    Sed diam nonumy...
                  </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                  <span class="photo">
                    <img src="../../resource/plugin/webmodule/assets/img/demo/avatar-3.jpg" alt=""/>
                  </span>
                            <span class="subject">
                    <span class="from">
                      Patrick Nilson
                    </span>
                    <span class="time">
                      6 hours
                    </span>
                  </span>
                            <span class="text">
                    No sea takimata sanctus...
                  </span>
                        </a>
                    </li>
                    <li class="footer">
                        <a href="javascript:void(0);">
                            View all messages
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#" class="dropdown-toggle row-bg-toggle">
                    <i class="icon-resize-vertical">
                    </i>
                </a>
            </li>
            <li class="dropdown">
                <a href="#" class="project-switcher-btn dropdown-toggle">
                    <i class="icon-folder-open">
                    </i>
                    <span>
                项目
              </span>
                </a>
            </li>
            <li class="dropdown user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-male">
                    </i>
                    <span class="username">
                John Doe
              </span>
                    <i class="icon-caret-down small">
                    </i>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="pages_user_profile.html">
                            <i class="icon-user">
                            </i>
                            我的资料
                        </a>
                    </li>
                    <li>
                        <a href="pages_calendar.html">
                            <i class="icon-calendar">
                            </i>
                            我的日历
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-tasks">
                            </i>
                            我的任务
                        </a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="login.html">
                            <i class="icon-key">
                            </i>
                            退出
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    <div id="project-switcher" class="container project-switcher">
        <div id="scrollbar">
            <div class="handle">
            </div>
        </div>
        <div id="frame">
            <ul class="project-list">
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-desktop">
                  </i>
                </span>
                        <span class="title">
                  Lorem ipsum dolor
                </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-compass">
                  </i>
                </span>
                        <span class="title">
                  Dolor sit invidunt
                </span>
                    </a>
                </li>
                <li class="current">
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-male">
                  </i>
                </span>
                        <span class="title">
                  Consetetur sadipscing elitr
                </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-thumbs-up">
                  </i>
                </span>
                        <span class="title">
                  Sed diam nonumy
                </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-female">
                  </i>
                </span>
                        <span class="title">
                  At vero eos et
                </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-beaker">
                  </i>
                </span>
                        <span class="title">
                  Sed diam voluptua
                </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-desktop">
                  </i>
                </span>
                        <span class="title">
                  Lorem ipsum dolor
                </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-compass">
                  </i>
                </span>
                        <span class="title">
                  Dolor sit invidunt
                </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-male">
                  </i>
                </span>
                        <span class="title">
                  Consetetur sadipscing elitr
                </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-thumbs-up">
                  </i>
                </span>
                        <span class="title">
                  Sed diam nonumy
                </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-female">
                  </i>
                </span>
                        <span class="title">
                  At vero eos et
                </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                <span class="image">
                  <i class="icon-beaker">
                  </i>
                </span>
                        <span class="title">
                  Sed diam voluptua
                </span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</header>
<div id="container">
    <div id="sidebar" class="sidebar-fixed">
        <div id="sidebar-content">
            <form class="sidebar-search">
                <div class="input-box">
                    <button type="submit" class="submit">
                        <i class="icon-search">
                        </i>
                    </button>
                    <span>
                <input type="text" placeholder="搜索...">
              </span>
                </div>
            </form>
            <div class="sidebar-search-results">
                <i class="icon-remove close">
                </i>
                <div class="title">
                    Documents
                </div>
                <ul class="notifications">
                    <li>
                        <a href="javascript:void(0);">
                            <div class="col-left">
                    <span class="label label-info">
                      <i class="icon-file-text">
                      </i>
                    </span>
                            </div>
                            <div class="col-right with-margin">
                    <span class="message">
                      <strong>
                        John Doe
                      </strong>
                      received $1.527,32
                    </span>
                                <span class="time">
                      finances.xls
                    </span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <div class="col-left">
                    <span class="label label-success">
                      <i class="icon-file-text">
                      </i>
                    </span>
                            </div>
                            <div class="col-right with-margin">
                    <span class="message">
                      My name is
                      <strong>
                        John Doe
                      </strong>
                      ...
                    </span>
                                <span class="time">
                      briefing.docx
                    </span>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="title">
                    Persons
                </div>
                <ul class="notifications">
                    <li>
                        <a href="javascript:void(0);">
                            <div class="col-left">
                    <span class="label label-danger">
                      <i class="icon-female">
                      </i>
                    </span>
                            </div>
                            <div class="col-right with-margin">
                    <span class="message">
                      Jane
                      <strong>
                        Doe
                      </strong>
                    </span>
                                <span class="time">
                      21 years old
                    </span>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <ul id="nav">
                <li class="current">
                    <a href="index.html">
                        <i class="icon-dashboard">
                        </i>
                        控制台
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <i class="icon-desktop">
                        </i>
                        UI 组件
                        <span class="label label-info pull-right">
                  6
                </span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="ui_general.html">
                                <i class="icon-angle-right">
                                </i>
                                通用
                            </a>
                        </li>
                        <li>
                            <a href="ui_buttons.html">
                                <i class="icon-angle-right">
                                </i>
                                按钮
                            </a>
                        </li>
                        <li>
                            <a href="ui_tabs_accordions.html">
                                <i class="icon-angle-right">
                                </i>
                                选项卡 &amp; 手风琴特效
                            </a>
                        </li>
                        <li>
                            <a href="ui_sliders.html">
                                <i class="icon-angle-right">
                                </i>
                                滑动条
                            </a>
                        </li>
                        <li>
                            <a href="ui_nestable_list.html">
                                <i class="icon-angle-right">
                                </i>
                                Nestable List
                            </a>
                        </li>
                        <li>
                            <a href="ui_typography.html">
                                <i class="icon-angle-right">
                                </i>
                                文字图标
                            </a>
                        </li>
                        <li>
                            <a href="ui_google_maps.html">
                                <i class="icon-angle-right">
                                </i>
                                Google地图
                            </a>
                        </li>
                        <li>
                            <a href="ui_grid.html">
                                <i class="icon-angle-right">
                                </i>
                                Grid
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <i class="icon-edit">
                        </i>
                        表单元素
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="form_components.html">
                                <i class="icon-angle-right">
                                </i>
                                表单组件
                            </a>
                        </li>
                        <li>
                            <a href="form_layouts.html">
                                <i class="icon-angle-right">
                                </i>
                                表单布局
                            </a>
                        </li>
                        <li>
                            <a href="form_validation.html">
                                <i class="icon-angle-right">
                                </i>
                                表单验证
                            </a>
                        </li>
                        <li>
                            <a href="form_wizard.html">
                                <i class="icon-angle-right">
                                </i>
                                表单提示
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <i class="icon-table">
                        </i>
                        表格
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="tables_static.html">
                                <i class="icon-angle-right">
                                </i>
                                静态表格
                            </a>
                        </li>
                        <li>
                            <a href="tables_dynamic.html">
                                <i class="icon-angle-right">
                                </i>
                                动态表格
                            </a>
                        </li>
                        <li>
                            <a href="tables_responsive.html">
                                <i class="icon-angle-right">
                                </i>
                                响应式表格
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="charts.html">
                        <i class="icon-bar-chart">
                        </i>
                        图表 &amp; 统计
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <i class="icon-folder-open-alt">
                        </i>
                        页面
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="login.html">
                                <i class="icon-angle-right">
                                </i>
                                登录页面
                            </a>
                        </li>
                        <li>
                            <a href="pages_user_profile.html">
                                <i class="icon-angle-right">
                                </i>
                                个人资料页面
                            </a>
                        </li>
                        <li>
                            <a href="pages_calendar.html">
                                <i class="icon-angle-right">
                                </i>
                                日历页面
                            </a>
                        </li>
                        <li>
                            <a href="pages_invoice.html">
                                <i class="icon-angle-right">
                                </i>
                                购物清单页面
                            </a>
                        </li>
                        <li>
                            <a href="404.html">
                                <i class="icon-angle-right">
                                </i>
                                404错误页面
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <i class="icon-list-ol">
                        </i>
                        4级菜单
                    </a>
                    <ul class="sub-menu">
                        <li class="open-default">
                            <a href="javascript:void(0);">
                                <i class="icon-cogs">
                                </i>
                                Item 1
                                <span class="arrow">
                    </span>
                            </a>
                            <ul class="sub-menu">
                                <li class="open-default">
                                    <a href="javascript:void(0);">
                                        <i class="icon-user">
                                        </i>
                                        Sample Link 1
                                        <span class="arrow">
                        </span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="current">
                                            <a href="javascript:void(0);">
                                                <i class="icon-remove">
                                                </i>
                                                Sample Link 1
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);">
                                                <i class="icon-pencil">
                                                </i>
                                                Sample Link 1
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);">
                                                <i class="icon-edit">
                                                </i>
                                                Sample Link 1
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <i class="icon-user">
                                        </i>
                                        Sample Link 1
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <i class="icon-external-link">
                                        </i>
                                        Sample Link 2
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <i class="icon-bell">
                                        </i>
                                        Sample Link 3
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <i class="icon-globe">
                                </i>
                                Item 2
                                <span class="arrow">
                    </span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="javascript:void(0);">
                                        <i class="icon-user">
                                        </i>
                                        Sample Link 1
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <i class="icon-external-link">
                                        </i>
                                        Sample Link 1
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <i class="icon-bell">
                                        </i>
                                        Sample Link 1
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <i class="icon-folder-open">
                                </i>
                                Item 3
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="sidebar-title">
            <span>
              提示
            </span>
            </div>
            <ul class="notifications demo-slide-in">
                <li style="display: none;">
                    <div class="col-left">
                <span class="label label-danger">
                  <i class="icon-warning-sign">
                  </i>
                </span>
                    </div>
                    <div class="col-right with-margin">
                <span class="message">
                  服务器
                  <strong>
                    #512
                  </strong>
                  crashed.
                </span>
                        <span class="time">
                  几分钟之前
                </span>
                    </div>
                </li>
                <li style="display: none;">
                    <div class="col-left">
                <span class="label label-info">
                  <i class="icon-envelope">
                  </i>
                </span>
                    </div>
                    <div class="col-right with-margin">
                <span class="message">
                  <strong>
                    John
                  </strong>
                  发了条消息给你
                </span>
                        <span class="time">
                  几分钟之前
                </span>
                    </div>
                </li>
                <li>
                    <div class="col-left">
                <span class="label label-success">
                  <i class="icon-plus">
                  </i>
                </span>
                    </div>
                    <div class="col-right with-margin">
                <span class="message">
                  <strong>
                    Emma
                  </strong>
                  账号已经创建
                </span>
                        <span class="time">
                  4小时以前
                </span>
                    </div>
                </li>
            </ul>
            <div class="sidebar-widget align-center">
                <div class="btn-group" data-toggle="buttons" id="theme-switcher">
                    <label class="btn active">
                        <input type="radio" name="theme-switcher" data-theme="bright">
                        <i class="icon-sun">
                        </i>
                        白天
                    </label>
                    <label class="btn">
                        <input type="radio" name="theme-switcher" data-theme="dark">
                        <i class="icon-moon">
                        </i>
                        夜晚
                    </label>
                </div>
            </div>
        </div>
        <div id="divider" class="resizeable">
        </div>
    </div>
    <div id="content">
        <div class="container">
            <div class="crumbs">
                <ul id="breadcrumbs" class="breadcrumb">
                    <li>
                        <i class="icon-home">
                        </i>
                        <a href="index.html">
                            控制台
                        </a>
                    </li>
                    <li class="current">
                        <a href="pages_calendar.html" title="">
                            日历
                        </a>
                    </li>
                </ul>
                <ul class="crumb-buttons">
                    <li>
                        <a href="charts.html" title="">
                            <i class="icon-signal">
                            </i>
                            <span>
                    统计
                  </span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#" title="" data-toggle="dropdown">
                            <i class="icon-tasks">
                            </i>
                            <span>
                    用户
                    <strong>
                      (+3)
                    </strong>
                  </span>
                            <i class="icon-angle-down left-padding">
                            </i>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="form_components.html" title="">
                                    <i class="icon-plus">
                                    </i>
                                    添加新用户
                                </a>
                            </li>
                            <li>
                                <a href="http://envato.stammtec.de/themeforest/melon/tables_dynamic.html"
                                   title="">
                                    <i class="icon-reorder">
                                    </i>
                                    查看
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="range">
                        <a href="#">
                            <i class="icon-calendar">
                            </i>
                            <span>
                  </span>
                            <i class="icon-angle-down">
                            </i>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="page-header">
                <div class="page-title">
                    <h3>
                        控制台
                    </h3>
                    <span>
                早上好, John!
              </span>
                </div>
                <ul class="page-stats">
                    <li>
                        <div class="summary">
                  <span>
                    新订单
                  </span>
                            <h3>
                                17,561
                            </h3>
                        </div>
                        <div id="sparkline-bar" class="graph sparkline hidden-xs">
                            20,15,8,50,20,40,20,30,20,15,30,20,25,20
                        </div>
                    </li>
                    <li>
                        <div class="summary">
                  <span>
                    我的余额
                  </span>
                            <h3>
                                $21,561.21
                            </h3>
                        </div>
                        <div id="sparkline-bar2" class="graph sparkline hidden-xs">
                            20,15,8,50,20,40,20,30,20,15,30,20,25,20
                        </div>
                    </li>
                </ul>
            </div>
            <div class="row row-bg">
                <div class="col-sm-6 col-md-3">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-content">
                            <div class="visual cyan">
                                <div class="statbox-sparkline">
                                    30,20,15,30,22,25,26,30,27
                                </div>
                            </div>
                            <div class="title">
                                客户
                            </div>
                            <div class="value">
                                4 501
                            </div>
                            <a class="more" href="javascript:void(0);">
                                查看更多
                                <i class="pull-right icon-angle-right">
                                </i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-content">
                            <div class="visual green">
                                <div class="statbox-sparkline">
                                    20,30,30,29,22,15,20,30,32
                                </div>
                            </div>
                            <div class="title">
                                反馈
                            </div>
                            <div class="value">
                                714
                            </div>
                            <a class="more" href="javascript:void(0);">
                                查看更多
                                <i class="pull-right icon-angle-right">
                                </i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 hidden-xs">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-content">
                            <div class="visual yellow">
                                <i class="icon-dollar">
                                </i>
                            </div>
                            <div class="title">
                                总共利润
                            </div>
                            <div class="value">
                                $42,512.61
                            </div>
                            <a class="more" href="javascript:void(0);">
                                查看更多
                                <i class="pull-right icon-angle-right">
                                </i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 hidden-xs">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-content">
                            <div class="visual red">
                                <i class="icon-user">
                                </i>
                            </div>
                            <div class="title">
                                访问量
                            </div>
                            <div class="value">
                                2 521 719
                            </div>
                            <a class="more" href="javascript:void(0);">
                                查看更多
                                <i class="pull-right icon-angle-right">
                                </i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="widget box">
                        <div class="widget-header">
                            <h4>
                                <i class="icon-reorder">
                                </i>
                                总的点击率(
                                <span class="blue">
                      +29%
                    </span>
                                )
                            </h4>
                            <div class="toolbar no-padding">
                                <div class="btn-group">
                      <span class="btn btn-xs widget-collapse">
                        <i class="icon-angle-down">
                        </i>
                      </span>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content">
                            <div id="chart_filled_blue" class="chart">
                            </div>
                        </div>
                        <div class="divider">
                        </div>
                        <div class="widget-content">
                            <ul class="stats">
                                <li>
                                    <strong>
                                        4,853
                                    </strong>
                                    <small>
                                        Total Views
                                    </small>
                                </li>
                                <li class="light hidden-xs">
                                    <strong>
                                        271
                                    </strong>
                                    <small>
                                        Last 24 Hours
                                    </small>
                                </li>
                                <li>
                                    <strong>
                                        1,025
                                    </strong>
                                    <small>
                                        Unique Users
                                    </small>
                                </li>
                                <li class="light hidden-xs">
                                    <strong>
                                        105
                                    </strong>
                                    <small>
                                        Last 24 Hours
                                    </small>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="widget box">
                        <div class="widget-header">
                            <h4>
                                <i class="icon-reorder">
                                </i>
                                曲线图
                            </h4>
                            <div class="toolbar no-padding">
                                <div class="btn-group">
                      <span class="btn btn-xs widget-collapse">
                        <i class="icon-angle-down">
                        </i>
                      </span>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content">
                            <div id="chart_simple" class="chart" style="height: 219px;">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="widget box">
                        <div class="widget-header">
                            <h4>
                                <i class="icon-reorder">
                                </i>
                                新用户
                            </h4>
                            <div class="toolbar no-padding">
                                <div class="btn-group">
                      <span class="btn btn-xs widget-collapse">
                        <i class="icon-angle-down">
                        </i>
                      </span>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content no-padding">
                            <table class="table table-striped table-checkable table-hover">
                                <thead>
                                <tr>
                                    <th class="checkbox-column">
                                        <input type="checkbox" class="uniform">
                                    </th>
                                    <th class="hidden-xs">
                                        First Name
                                    </th>
                                    <th>
                                        Last Name
                                    </th>
                                    <th>
                                        Status
                                    </th>
                                    <th class="align-center">
                                        Approve
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="uniform">
                                    </td>
                                    <td class="hidden-xs">
                                        Joey
                                    </td>
                                    <td>
                                        Greyson
                                    </td>
                                    <td>
                          <span class="label label-success">
                            Approved
                          </span>
                                    </td>
                                    <td class="align-center">
                          <span class="btn-group">
                            <a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip">
                              <i class="icon-ok">
                              </i>
                            </a>
                          </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="uniform">
                                    </td>
                                    <td class="hidden-xs">
                                        Wolf
                                    </td>
                                    <td>
                                        Bud
                                    </td>
                                    <td>
                          <span class="label label-info">
                            Pending
                          </span>
                                    </td>
                                    <td class="align-center">
                          <span class="btn-group">
                            <a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip">
                              <i class="icon-ok">
                              </i>
                            </a>
                          </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="uniform">
                                    </td>
                                    <td class="hidden-xs">
                                        Darin
                                    </td>
                                    <td>
                                        Alec
                                    </td>
                                    <td>
                          <span class="label label-warning">
                            Suspended
                          </span>
                                    </td>
                                    <td class="align-center">
                          <span class="btn-group">
                            <a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip">
                              <i class="icon-ok">
                              </i>
                            </a>
                          </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <input type="checkbox" class="uniform">
                                    </td>
                                    <td class="hidden-xs">
                                        Andrea
                                    </td>
                                    <td>
                                        Brenden
                                    </td>
                                    <td>
                          <span class="label label-danger">
                            Blocked
                          </span>
                                    </td>
                                    <td class="align-center">
                          <span class="btn-group">
                            <a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip">
                              <i class="icon-ok">
                              </i>
                            </a>
                          </span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="row">
                                <div class="table-footer">
                                    <div class="col-md-12">
                                        <div class="table-actions">
                                            <label>
                                                Apply action:
                                            </label>
                                            <select class="select2" data-minimum-results-for-search="-1"
                                                    data-placeholder="Select action...">
                                                <option value="">
                                                </option>
                                                <option value="Edit">
                                                    Edit
                                                </option>
                                                <option value="Delete">
                                                    Delete
                                                </option>
                                                <option value="Move">
                                                    Move
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="widget">
                        <div class="widget-header">
                            <h4>
                                <i class="icon-calendar">
                                </i>
                                日历
                            </h4>
                        </div>
                        <div class="widget-content">
                            <div id="calendar">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="widget">
                        <div class="widget-header">
                            <h4>
                                <i class="icon-reorder">
                                </i>
                                订阅
                            </h4>
                            <div class="toolbar no-padding">
                                <div class="btn-group">
                      <span class="btn btn-xs widget-collapse">
                        <i class="icon-angle-down">
                        </i>
                      </span>
                                    <span class="btn btn-xs widget-refresh">
                        <i class="icon-refresh">
                        </i>
                      </span>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content">
                            <div class="tabbable tabbable-custom">
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="#tab_feed_1" data-toggle="tab">
                                            System
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#tab_feed_2" data-toggle="tab">
                                            Activities
                                        </a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab_feed_1">
                                        <div class="scroller" data-height="290px" data-always-visible="1"
                                             data-rail-visible="0">
                                            <ul class="feeds clearfix">
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-bell">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    You have 2 puzzles to solve.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            Just now
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New user registered.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            20 mins ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="hoverable">
                                                    <a href="javascript:void(0);">
                                                        <div class="col1">
                                                            <div class="content">
                                                                <div class="content-col1">
                                                                    <div class="label label-info">
                                                                        <i class="icon-bullhorn">
                                                                        </i>
                                                                    </div>
                                                                </div>
                                                                <div class="content-col2">
                                                                    <div class="desc">
                                                                        New items are in queue.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col2">
                                                            <div class="date">
                                                                25 mins ago
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-danger">
                                                                    <i class="icon-warning-sign">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    High CPU load on cluster #2.
                                                                    <span class="label label-danger label-mini">
                                        Fix it
                                        <i class="icon-share-alt">
                                        </i>
                                      </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            30 mins ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-warning">
                                                                    <i class="icon-bolt">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    Disk space to 85% full.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            45 mins ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New user registered.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            1 hour ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-default">
                                                                    <i class="icon-time">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    Time successfully synced.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            1.5 hours ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info">
                                                                    <i class="icon-bullhorn">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    Download finished.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            1.8 hours ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New order received.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            2 hours ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info">
                                                                    <i class="icon-bullhorn">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    Download finished.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            3 hours ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New order received.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            5 hours ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info">
                                                                    <i class="icon-bullhorn">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    Download finished.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            5.5 hours ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New order received.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            7 hours ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info">
                                                                    <i class="icon-bullhorn">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    Download finished.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            16 hours ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New order received.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            20 hours ago
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tab_feed_2">
                                        <div class="scroller" data-height="290px" data-always-visible="1"
                                             data-rail-visible="0">
                                            <ul class="feeds clearfix">
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New user registered.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            1 min ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New user registered.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            5 mins ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New order received.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            10 mins ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New user registered.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            20 mins ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New order received.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            30 mins ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New user registered.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            40 mins ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New order received.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            50 mins ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-success">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New user registered.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            1 hour ago
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="col1">
                                                        <div class="content">
                                                            <div class="content-col1">
                                                                <div class="label label-info">
                                                                    <i class="icon-plus">
                                                                    </i>
                                                                </div>
                                                            </div>
                                                            <div class="content-col2">
                                                                <div class="desc">
                                                                    New order received.
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col2">
                                                        <div class="date">
                                                            1.5 hours ago
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>