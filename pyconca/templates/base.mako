<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8" />
    <title>PyCon Canada</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- Le styles -->
    <link href="${request.static_url("pyconca:static/pyconca.css")}" rel="stylesheet" />
    <style type="text/css">
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="${request.static_url("pyconca:static/libs/bootstrap-2.0.3/css/bootstrap-responsive.css")}" rel="stylesheet" />
    <script src="${request.static_url("pyconca:static/libs/jquery-1.7.2.min.js")}"></script>
    <script src="${request.static_url("pyconca:static/libs/bootstrap-2.0.3/js/bootstrap.min.js")}"></script>
    <script src="${request.static_url("pyconca:static/libs/handlebars-0.9.0.pre.3.js")}"></script>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <script src="http://widgets.twimg.com/j/2/widget.js"></script>
  </head>

  <body class="main-body">

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid main-nav">
          <div class="nav-row">

            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </a>

            <div class="nav-collapse">
              <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link" href="${request.application_url}">
                      <i class="icon-home icon-white nav-icon"></i>
                      Home
                  </a>
                </li>

                <li class="nav-item">
                  <a class="nav-link" href="${request.application_url}/about">
                      <i class="icon-info-sign icon-white nav-icon"></i>
                      About
                  </a>
                </li>

                <li class="nav-item">
                  <a class="nav-link" href="${request.application_url}/venue">
                      <i class="icon-map-marker icon-white nav-icon"></i>
                      Venue
                  </a>
                </li>

                <li class="nav-item">
                  <a class="nav-link" href="${request.application_url}/schedule">
                      <i class="icon-time icon-white nav-icon"></i>
                      Schedule
                  </a>
                </li>

                <li class="nav-item">
                  <a class="nav-link" href="${request.application_url}/speakers">
                      <i class="icon-bullhorn icon-white nav-icon"></i>
                      Speakers
                  </a>
                </li>

                <li class="nav-item">
                  <a class="nav-link" href="${request.application_url}/sponsors">
                      <i class="icon-heart icon-white nav-icon"></i>
                      Sponsors
                  </a>
                </li>

                % if logged_in:
                    <li class="nav-item">
                      <a class="nav-link" href="${request.application_url}/logout">
                          <i class="icon-remove icon-white nav-icon"></i>
                          Logout
                      </a>
                    </li>
                % else:
                    <li class="nav-item">
                      <a class="nav-link" href="${request.application_url}/login">
                          <i class="icon-user icon-white nav-icon"></i>
                          Login
                      </a>
                    </li>
                % endif

                <li class="nav-item">
                  <a class="nav-link" href="${request.application_url}/new/user">
                      <i class="icon-star-empty icon-white nav-icon"></i>
                      Sign Up
                  </a>
                </li>
              </ul>

              % if logged_in:
                  <p class="navbar-text pull-right">
                      Logged in as 
                      <a href="${request.application_url}/user/${logged_in}">
                          ${request.user.username}
                      </a>
                      &nbsp;
                  </p>
              % endif
            </div><!--/.nav-collapse -->
          </div> <!-- main-row -->
        </div>
      </div>
    </div>

  <div>
    <%block name="content"/>
  </div>

  <div id="sponsor-carousel-row" class="row-fluid">
    <div class="main-row">
      <div class="span2">
        <h3 style="text-align:right;">Sponsors</h3>
      </div>

      <div class="span10">
        <div id="myCarousel" class="carousel slide" 
            style="position: relative; left: 10%; bottom: 1%;">
          <div class="carousel-inner" style="opacity: 0.6;">
            <div class="active item">
              <img src="${request.static_url("pyconca:static/vmfarms-logo.png")}"
                width="200px;" height="100px;" class="black-and-white" alt="">
            </div>

            <div class="item">
              <img src="${request.static_url("pyconca:static/freshbooks.gif")}"
                width="200px;" height="100px;" class="black-and-white" alt="">
            </div>

          </div> <!-- carousel-inner -->
        </div> <!-- myCarousel -->
      </div> <!-- span4 -->
    </div> 
  </div> <!-- sponsors-row -->

  <script>
    $(function() {
      $('.carousel').carousel();
    });
  </script>

  <div id="footer-row" class="row-fluid">
    <div class="main-row">
      <div class="span3">
        <strong>&copy; PyCon Canada 2012</strong>
      </div>

      <div id="footer-links" class="span9">
        <div class="pull-right">
          <ul id="footer-nav">
            <li class="footer-nav-link">
              <a class="nav-link" href="${request.application_url}">Home</a>
            </li>

            <li class="footer-nav-link">
              <a class="nav-link" href="${request.application_url}/about">About</a>
            </li>

            <li class="footer-nav-link">
              <a class="nav-link" href="${request.application_url}/venue">Venue</a>
            </li>

            <li class="footer-nav-link">
              <a class="nav-link" href="${request.application_url}/schedule">Schedule</a>
            </li>

            <li class="footer-nav-link">
              <a class="nav-link" href="${request.application_url}/speakers">Speakers</a>
            </li>

            <li class="footer-nav-link">
              <a class="nav-link" href="${request.application_url}/sponsors">Sponsors</a>
            </li>

            <li class="footer-nav-link">
              <a href="https://twitter.com/pyconca">@pyconca</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>

</div>

</body>
</html>