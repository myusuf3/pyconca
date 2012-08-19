<%inherit file="event.mako"/>

<%block name="title">
    Sponsors
</%block>

<%block name="info">
    <div class="row-fluid content-section">
        <h1 class="header header-first">Sponsor PyCon Canada</h1>
        <p>
            If you are interested in sponsoring PyCon Canada, please contact <a
            href="mailto:sponsorship@pycon.ca">sponsorship@pycon.ca</a>.
        </p>
    </div>

    <div class="row-fluid content-section">
        <h1 class="header">Silver Sponsors</h1>
        <p>
          <a href="http://www.freshbooks.com/">
            <img src="${request.static_url("pyconca:static/freshbooks.gif")}"
                 width="200px;" height="100px;" alt="">
          </a>
        </p>
    </div>

    <div class="row-fluid content-section">
        <h1 class="header">Venue Sponsor</h1>
        <br>
        <p>
          <a href="http://www.python.org/psf/" style="border-bottom: none;">
            <img src="${request.static_url("pyconca:static/psf-logo-317x71-alpha.png")}"
                 width="317px;" height="71px;" alt="">
          </a>
        </p>
    </div>

    <div class="row-fluid content-section">
        <h1 class="header">Hosting Sponsor</h1>
        <br>
        <p>
          <a href="http://vmfarms.com/">
            <img src="${request.static_url("pyconca:static/vmfarms-logo.png")}"
                 width="200px;" height="100px;" alt="">
          </a>
        </p>
    </div>

</%block>
