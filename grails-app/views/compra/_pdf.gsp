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
          <strong>Recibo de la compra</strong>
        </h2>
       </div>
     </div>
   </div>

   <table>
      <tr>
        <th>Cliente</th>
        <th>Descuento</th>
        <th>Descripción</th>
        <th>Total</th>
      </tr>
      <tr>
        <td>${compra.persona.nombre}</td>
        <td>${compra.total}</td>
        <td>${compra.descripcion}
            <ul>
                <g:each var="element" in="${compra.tacos}">
                    <li>
                        <a href="/taco/show/${element.id}">${element.nombre}</a>
                    </li>
                </g:each>
                </ul>
        </td>
        <td>${compra.total}</td>
      </tr>
   
    </table>
        <h2> 
          <strong>Pago: $ ${compra.total}</strong>
          <div>

          <strong>Gracias por su compra</strong>
          </div>
        </h2>
  </div>
</body>
</html>
