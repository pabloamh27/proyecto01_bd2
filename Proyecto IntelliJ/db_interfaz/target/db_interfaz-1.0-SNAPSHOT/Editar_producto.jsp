<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Editar_producto</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Editar_producto.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.25.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Proyecto01"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Editar_producto">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-d39c"><div class="u-align-left u-clearfix u-sheet u-valign-middle u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse">
            <a class="u-button-style u-nav-link" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Registro-PYME.html">Registro PYME</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Registro-Cliente.html">Registro Cliente</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Login-Cliente.html">Login Cliente</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Login-PYME.html">Login PYME</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Registro-PYME.html">Registro PYME</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Registro-Cliente.html">Registro Cliente</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Login-Cliente.html">Login Cliente</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Login-PYME.html">Login PYME</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-align-center u-clearfix u-image u-shading u-section-1" src="" data-image-width="150" data-image-height="97" id="sec-09a7">
      <div class="u-align-center u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-default u-text-1">Editar el producto</h2>
        <div class="u-form u-form-1">
          <form action="editar" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;">
            <div class="u-form-group u-form-group-1">
              <label for="text-9c86" class="u-form-control-hidden u-label"></label>
              <input type="text" placeholder="Ingrese el nombre del producto a editar" id="text-9c86" name="nombre_producto" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="required">
            </div>
            <div class="u-form-group u-form-name">
              <label for="name-707b" class="u-form-control-hidden u-label"></label>
              <input type="text" placeholder="Ingrese el nuevo nombre" id="name-707b" name="nuevo_nombre_producto" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
            </div>
            <div class="u-form-group">
              <label for="email-707b" class="u-form-control-hidden u-label"></label>
              <input type="text" placeholder="Ingrese la nueva descripcion" id="email-707b" name="descripcion" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
            </div>
            <div class="u-form-group">
              <label for="message-707b" class="u-form-control-hidden u-label"></label>
              <input placeholder="Ingrese el nuevo precio" rows="4" cols="50" id="message-707b" name="precio_unitario" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" type="text">
            </div>
            <div class="u-align-left u-form-group u-form-submit">
              <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-radius-11">Editar<br>
              </a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Editado con exito! </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-bc6c"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Pablo Muñoz y Taylor Hernandez</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/html-templates" target="_blank">
        <span>HTML Template</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/html-website-builder" target="_blank">
        <span>HTML Creator</span>
      </a>. 
    </section>
  </body>
</html>