﻿<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Home.aspx.cs" Inherits="AmbulanceSurveillance.DriverList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Drivers</title>
    <style>
        body {
            font-size: 15px;
            color: #666;
            font-family: 'Roboto', sans-serif;
        }

        .content {
            height: 200px;
            margin-top: 200px;
            align-content: center;
            text-align: center;
        }

        a {
            text-decoration: none;
        }


        .container {
            max-width: 1200px;
            margin: 0 auto;
            margin-top: 30px;
            width: 100%;
        }

        .nav-fostrap {
            display: block;
            margin-bottom: 15px 0;
            background: #03A9F4;
            -webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
            -moz-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
            -ms-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
            -o-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
            border-radius: 3px;
        }

            .nav-fostrap ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                display: block;
            }

            .nav-fostrap li {
                list-style-type: none;
                margin: 0;
                padding: 0;
                display: inline-block;
                position: relative;
                font-size: 14;
                color: #def1f0;
            }

                .nav-fostrap li a {
                    padding: 15px 20px;
                    font-size: 14;
                    color: #def1f0;
                    display: inline-block;
                    outline: 0;
                    font-weight: 400;
                    cursor: pointer;
                }

                .nav-fostrap li:hover ul.dropdown {
                    display: block;
                    cursor: pointer;
                }

                .nav-fostrap li ul.dropdown {
                    position: absolute;
                    display: none;
                    width: 200px;
                    background: #2980B9;
                    -webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
                    -moz-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
                    -ms-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
                    -o-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
                    box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
                    padding-top: 0;
                }

                    .nav-fostrap li ul.dropdown li {
                        display: block;
                        list-style-type: none;
                    }

                        .nav-fostrap li ul.dropdown li a {
                            padding: 15px 20px;
                            font-size: 15px;
                            color: #fff;
                            display: block;
                            font-weight: 400;
                            cursor: pointer;
                        }

                        .nav-fostrap li ul.dropdown li:last-child a {
                            border-bottom: none;
                            cursor: pointer;
                        }

                .nav-fostrap li:hover a {
                    background: #2980B9;
                    color: #fff !important;
                    cursor: pointer;
                }

                .nav-fostrap li:first-child:hover a {
                    border-radius: 3px 0 0 3px;
                }

                .nav-fostrap li ul.dropdown li:hover a {
                    background: rgba(0,0,0, .1);
                }

                .nav-fostrap li ul.dropdown li:first-child:hover a {
                    border-radius: 0;
                }

                .nav-fostrap li:hover .arrow-down {
                    border-top: 5px solid #fff;
                }

        .arrow-down {
            width: 0;
            height: 0;
            border-left: 5px solid transparent;
            border-right: 5px solid transparent;
            border-top: 5px solid #def1f0;
            position: relative;
            top: 15px;
            right: -5px;
            content: '';
        }

        .title-mobile {
            display: none;
        }

        @media only screen and (max-width:900px) {

            .nav-fostrap {
                background: #fff;
                width: 200px;
                height: 100%;
                display: block;
                position: fixed;
                left: -200px;
                top: 0px;
                -webkit-transition: left 0.25s ease;
                -moz-transition: left 0.25s ease;
                -ms-transition: left 0.25s ease;
                -o-transition: left 0.25s ease;
                transition: left 0.25s ease;
                margin: 0;
                border: 0;
                border-radius: 0;
                overflow-y: auto;
                overflow-x: hidden;
                height: 100%;
            }

            .title-mobile {
                position: fixed;
                display: block;
                top: 10px;
                font-size: 20px;
                left: 100px;
                right: 100px;
                text-align: center;
                color: #FFF;
            }

            .nav-fostrap.visible {
                left: 0px;
                -webkit-transition: left 0.25s ease;
                -moz-transition: left 0.25s ease;
                -ms-transition: left 0.25s ease;
                -o-transition: left 0.25s ease;
                transition: left 0.25s ease;
            }

            .nav-bg-fostrap {
                display: inline-block;
                vertical-align: middle;
                width: 100%;
                height: 50px;
                margin: 0;
                position: absolute;
                top: 0px;
                left: 0px;
                background: #03A9F4;
                padding: 12px 0 0 10px;
                -webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
                -moz-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
                -ms-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
                -o-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
            }

            .navbar-fostrap {
                display: inline-block;
                vertical-align: middle;
                height: 50px;
                cursor: pointer;
                margin: 0;
                position: absolute;
                top: 0;
                left: 0;
                padding: 12px;
            }

                .navbar-fostrap span {
                    height: 2px;
                    background: #fff;
                    margin: 5px;
                    display: block;
                    width: 20px;
                }

                    .navbar-fostrap span:nth-child(2) {
                        width: 20px;
                    }

                    .navbar-fostrap span:nth-child(3) {
                        width: 20px;
                    }

            .nav-fostrap ul {
                padding-top: 50px;
            }

            .nav-fostrap li {
                display: block;
            }

                .nav-fostrap li a {
                    display: block;
                    color: #505050;
                    font-weight: 600;
                }

                .nav-fostrap li:first-child:hover a {
                    border-radius: 0;
                }

                .nav-fostrap li ul.dropdown {
                    position: relative;
                }

                    .nav-fostrap li ul.dropdown li a {
                        background: #2980B9 !important;
                        border-bottom: none;
                        color: #fff !important;
                    }

                .nav-fostrap li:hover a {
                    background: #03A9F4;
                    color: #fff !important;
                }

                .nav-fostrap li ul.dropdown li:hover a {
                    background: rgba(0,0,0,.1);
                    !important;
                    color: #fff !important;
                }

                .nav-fostrap li ul.dropdown li a {
                    padding: 10px 10px 10px 30px;
                }

                .nav-fostrap li:hover .arrow-down {
                    border-top: 5px solid #fff;
                }

            .arrow-down {
                border-top: 5px solid #505050;
                position: absolute;
                top: 20px;
                right: 10px;
            }

            .cover-bg {
                background: rgba(0,0,0,0.5);
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
            }

            td {
                padding: 15px;
                text-align: left;
                vertical-align: middle;
                font-weight: 300;
                font-size: 12px;
                color: #fff;
                border-bottom: solid 1px rgba(255,255,255,0.1);
            }


            /* demo styles */

            @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);

            body {
                background: -webkit-linear-gradient(left, #25c481, #25b7c4);
                background: linear-gradient(to right, #25c481, #25b7c4);
                font-family: 'Roboto', sans-serif;
            }

            section {
                margin: 50px;
            }


            /* follow me template */
            .made-with-love {
                margin-top: 40px;
                padding: 10px;
                clear: left;
                text-align: center;
                font-size: 10px;
                font-family: arial;
                color: #fff;
            }

                .made-with-love i {
                    font-style: normal;
                    color: #F50057;
                    font-size: 14px;
                    position: relative;
                    top: 2px;
                }

                .made-with-love a {
                    color: #fff;
                    text-decoration: none;
                }

                    .made-with-love a:hover {
                        text-decoration: underline;
                    }


            /* for custom scrollbar for webkit browser*/

            ::-webkit-scrollbar {
                width: 6px;
            }

            ::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            }

            ::-webkit-scrollbar-thumb {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            }
        }

        @media only screen and (max-width:1199px) {

            .container {
                width: 96%;
            }
        }

        .fixed-top {
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
        }

        #overlaydiv {
            width: 100%;
            position: relative;
        }

        #home,
        #list {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
        }

        #home {
            z-index: 10;
        }
        
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script>

        $(document).ready(function () {
            document.getElementById("list").style.visibility = "hidden";
            $('.navbar-fostrap').click(function () {
                $('.nav-fostrap').toggleClass('visible');
                $('body').toggleClass('cover-bg');
            });

            $('#homeItem').click(function () {
                document.getElementById("home").style.visibility = "visible";
                document.getElementById("list").style.visibility = "hidden";
            });

            $('#listitem').click(function () {
                document.getElementById("home").style.visibility = "hidden";
                document.getElementById("list").style.visibility = "visible";
            });
        });

        $(window).on("load resize ", function () {
            var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
            $('.tbl-header').css({ 'padding-right': scrollWidth });
        }).resize();
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
            <div class="container">
                <nav>
                    <div class="nav-fostrap">
                        <ul>
                            <li id="homeItem"><a>Home</a></li>
                            <li id="listitem"><a>Drivers</a></li>
                            <li id="logout"><a href="Index.aspx">Log out</a></li>
                        </ul>
                    </div>
                    <div class="nav-bg-fostrap">
                        <div class="navbar-fostrap"><span></span><span></span><span></span></div>
                        <a href="" class="title-mobile">Fostrap</a>
                    </div>
                </nav>
                <div id="overlaydiv">
                    <div id="home" class='content'>

                        <h1 style="color: blue">Ambulance Surveillance Admin Pannel</h1>

                    </div>

                    <div id="list" style="margin-top:60px">
                        <asp:Repeater ID="DriverRepeater" runat="server">
                            <HeaderTemplate>
                                <div class="tbl-header">
                                    <table style="table-layout: fixed; width: 100%; text-align: left;">
                                        <thead>
                                            <tr>
                                                <b>
                                                    <th style="padding:16px; border-bottom: 1px solid #ddd;">Name</th>
                                                    <th style="padding:16px; border-bottom: 1px solid #ddd;">Number</th>
                                                    <th style="padding:16px; border-bottom: 1px solid #ddd;">Email</th>
                                                </b>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div class="tbl-content">
                                    <table style="table-layout: fixed; width: 100%; text-align: left">
                                        <tr>
                                            <td style="padding:16px; border-bottom: 1px solid #ddd;">
                                                <%#DataBinder.Eval(Container.DataItem,"name")%>
                                            </td>
                                            <td style="padding:16px; border-bottom: 1px solid #ddd;">
                                                <%#DataBinder.Eval(Container.DataItem,"phone")%>
                                            </td>
                                            <td style="padding:16px; border-bottom: 1px solid #ddd;">
                                                <%#DataBinder.Eval(Container.DataItem,"email")%>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </ItemTemplate>

                            <FooterTemplate>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
