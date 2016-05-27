<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <jsp:directive.include file="header.jsp" />   
        <div class="container row">
            <h4 align="center">Registar Producto</h4>
            <form method="post" action="controlador" class="center">
                <input type="hidden" name="accion" value="RegistrarProducto">
                    <div class="row center">
                        <div class="input-field col s6 center">
                            <i class="material-icons prefix center">spellcheck</i>
                            <input id="icon_prefix" type="text" name="txtNombre" class="validate">
                            <label for="icon_spellcheck">Nombre</label>
                        </div>
                    </div>
                    <div class="row center">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">credit_card</i>
                            <input id="icon_credit_card" type="text" name="txtPrecio" class="validate">
                            <label for="icon_credit_card">Precio</label>
                        </div>
                    </div>
                <div class="row center">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">view_module</i>
                            <input id="icon_view_module" type="text" name="txtPrecio" class="validate">
                            <label for="icon_view_module">Categoria</label>
                        </div>
                    </div>
                    <div class="row center">
                        <div class="input-field col s6">
                            <i class="material-icons prefix">perm_media</i>
                            <input id="files" type="file" name="txtImagen" class="validate">
                        </div>
                    </div>
                <div>
                  <input class="btn " type="submit" value="Registrar" name="btnRegistrar" />
                </div>
                </form>
            <script>
              function archivo(evt) {
                  var files = evt.target.files; // FileList object
             
                  // Obtenemos la imagen del campo "file".
                  for (var i = 0, f; f = files[i]; i++) {
                    //Solo admitimos imágenes.
                    if (!f.type.match('image.*')) {
                        continue;
                    }
             
                    var reader = new FileReader();
             
                    reader.onload = (function(theFile) {
                        return function(e) {
                          // Insertamos la imagen
                         document.getElementById("list").innerHTML = ['<img class="thumb" src="', e.target.result,'" title="', escape(theFile.name), '"/>'].join('');
                        };
                    })(f);
             
                    reader.readAsDataURL(f);
                  }
              }
             
              document.getElementById('files').addEventListener('change', archivo, false);
      </script>
        </div>          

<jsp:directive.include file="footer.jsp" />