<%-- 
    Document   : med-calendar
    Created on : Nov 14, 2017, 10:16:20 PM
    Author     : mrivas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <!--<link rel="icon" href="../../../../favicon.ico">-->

        <title>Signin Template for Bootstrap</title>

        <!-- Bootstrap core CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="assets/css/medcalendar.css" rel="stylesheet">
    </head>
    <body>
        <div class="site-wrapper">
          <div class="site-wrapper-inner">
            <div class="cover-container">
              <header class="masthead clearfix">
                <div class="inner">
                  <nav class="nav nav-masthead">
                    <a class="nav-link" href="/pillApp/index.jsp">Home</a>
                    <a class="nav-link" href="/pillApp/sign-in.jsp">Sign-in</a>
                    <a class="nav-link" href="/pillApp/register.jsp" >Register</a>
                    <a class="nav-link active" href="#" >Prescriptions</a>
                    <a class="nav-link" href="/pillApp/contact-list.jsp" >Contacts</a>
                  </nav>
                </div>
              </header>
            <div id="calendar" class="cover-content-container">
                <ul class="weekdays">
                    <li>Sunday</li>
                    <li>Monday</li>
                    <li>Tuesday</li>
                    <li>Wednesday</li>
                    <li>Thursday</li>
                    <li>Friday</li>
                    <li>Saturday</li>
                </ul>

                <!-- Days from previous month -->

                <ul class="days">
                    <li class="day other-month">
                        <div class="date">27</div>                      
                    </li>
                    <li class="day other-month">
                        <div class="date">28</div>
                        <div class="event">
                            <div class="event-desc">
                                HTML 5 lecture with Brad Traversy from Eduonix
                            </div>
                            <div class="event-time">
                                1:00pm to 3:00pm
                            </div>
                        </div>                      
                    </li>
                    <li class="day other-month">
                        <div class="date">29</div>                      
                    </li>
                    <li class="day other-month">
                        <div class="date">30</div>                      
                    </li>
                    <li class="day other-month">
                        <div class="date">31</div>                      
                    </li>

                    <!-- Days in current month -->

                    <li class="day-main">
                        <div class="date">1</div>                       
                    </li>
                    <li class="day-main">
                        <div class="date">2</div>
                        <div class="event">
                            <div class="event-desc">
                                Career development @ Community College room #402
                            </div>
                            <div class="event-time">
                                2:00pm to 5:00pm
                            </div>
                        </div>                      
                    </li>
                </ul>

                    <!-- Row #2 -->

                <ul class="days">
                    <li class="day-main">
                        <div class="date">3</div>                       
                    </li>
                    <li class="day-main">
                        <div class="date">4</div>                       
                    </li>
                    <li class="day-main">
                        <div class="date">5</div>                       
                    </li>
                    <li class="day-main">
                        <div class="date">6</div>                       
                    </li>
                    <li class="day-main">
                        <div class="date">7</div>
                        <div class="event">
                            <div class="event-desc">
                                Group Project meetup
                            </div>
                            <div class="event-time">
                                6:00pm to 8:30pm
                            </div>
                        </div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">8</div>                       
                    </li>
                    <li class="day-main">
                        <div class="date">9</div>                       
                    </li>
                </ul>

                    <!-- Row #3 -->

                <ul class="days">
                    <li class="day-main">
                        <div class="date">10</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">11</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">12</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">13</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">14</div><div class="event">
                            <div class="event-desc">
                                Board Meeting
                            </div>
                            <div class="event-time">
                                1:00pm to 3:00pm
                            </div>
                        </div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">15</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">16</div>                      
                    </li>
                </ul>

                    <!-- Row #4 -->

                <ul class="days">
                    <li class="day-main">
                        <div class="date">17</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">18</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">19</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">20</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">21</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">22</div>
                        <div class="event">
                            <div class="event-desc">
                                Conference call
                            </div>
                            <div class="event-time">
                                9:00am to 12:00pm
                            </div>
                        </div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">23</div>                      
                    </li>
                </ul>

                        <!-- Row #5 -->

                <ul class="days">
                    <li class="day-main">
                        <div class="date">24</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">25</div>
                        <div class="event">
                            <div class="event-desc">
                                Conference Call
                            </div>
                            <div class="event-time">
                                1:00pm to 3:00pm
                            </div>
                        </div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">26</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">27</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">28</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">29</div>                      
                    </li>
                    <li class="day-main">
                        <div class="date">30</div>                      
                    </li>
                </ul>

                <!-- Row #6 -->

                <ul class="days">
                    <li class="day-main">
                        <div class="date">31</div>                      
                    </li>
                    <li class="day other-month">
                        <div class="date">1</div> <!-- Next Month -->                       
                    </li>
                    <li class="day other-month">
                        <div class="date">2</div>                       
                    </li>
                    <li class="day other-month">
                        <div class="date">3</div>                       
                    </li>
                    <li class="day other-month">
                        <div class="date">4</div>                       
                    </li>
                    <li class="day other-month">
                        <div class="date">5</div>                       
                    </li>
                    <li class="day other-month">
                        <div class="date">6</div>                       
                    </li>
                </ul>

            </div><!-- /. calendar -->
            </div>
          </div>
        </div>
    </body>
</html>
