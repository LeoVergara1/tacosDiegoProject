<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title></title>
  <style>
      table {
          font-family: arial, sans-serif;
          border-collapse: collapse;
          width: 100%;
      }
      
      td, th {
          border: 1px solid #dddddd;
          text-align: left;
          padding: 8px;
      }
      
      tr:nth-child(even) {
          background-color: #dddddd;
      }
      </style>
</head>
<body>
  <div class="container">
   <img src="/assets/antojitos.jpg"  class="img-circle" alt="" style="width: 100%" />
   <div class="row">
     <div class="col-lg-12">
       <div class="col-lg-6 col-lg-offset-3">

        <h2> 
          <strong>Resumen de tu proceso</strong>
        </h2>
       </div>
     </div>
   </div>

   <table>
      <tr>
        <th>Persona</th>
        <th>Detalle</th>
        <th>Total</th>
      </tr>
      <tr>
        <td>${reciclaje.persona.nombre}</td>
        <td>
            <ul>
                <g:each var="producto" in="${reciclaje.productos}">
                    <li>
                        <a href="/taco/show/${producto.id}">${producto.pruducto}</a>
                    </li>
                </g:each>
                </ul>
        </td>
        <td>${reciclaje.total}</td>
      </tr>
   
    </table>
        <h2> 
          <strong>Ganancia: $ ${reciclaje.total}</strong>
          <div>

          <strong>Ahora imaginé proyectar estás ganancia a uno o dos años</strong>
          </div>
        </h2>
  </div>
</body>
</html>
