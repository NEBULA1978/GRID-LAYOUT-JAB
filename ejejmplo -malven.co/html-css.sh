#!/bin/bash

cat <<EOF > index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    /* Ejem 1: Uso básico de CSS Grid */
    .grid-container {
      display: grid;
    }

    /* Ejem 2: Definir filas y columnas */
    .grid-container {
      display: grid;
      grid-template-rows: 100px 100px;
      grid-template-columns: 100px 100px 100px;
    }

    /* Ejem 3: Tamaños personalizados para filas y columnas */
    .grid-container {
      display: grid;
      grid-template-rows: 100px 100px;
      grid-template-columns: 1fr 2fr 1fr 1fr 1fr;
      grid-gap: 5px;
    }

    /* Ejem 4: Elementos de diferentes tamaños */
    .grid-container {
      display: grid;
      grid-template-rows: 100px 100px 100px 100px;
      grid-template-columns: 100px 100px 100px 100px;
      grid-gap: 5px;
    }

    .grid-item1 {
      background: blue;
      text-align: center;
      border: 5px solid black;
      grid-column-start: 1;
      grid-column-end: 5;
      grid-row-start: 1;
      grid-row-end: 3;
    }

    .grid-item2 {
      background: grey;
      text-align: center;
      border: 5px solid black;
    }

    /* Ejem 5: Definir rangos con nombres */
    .grid-container {
      display: grid;
      grid-template-rows: 100px [Line1] 100px [Line2] 100px [Line3] 100px [Line4];
      grid-template-columns: 100px 100px 100px 100px;
      grid-gap: 5px;
    }

    .grid-item1 {
      background: blue;
      text-align: center;
      border: 5px solid black;
      grid-column: 1 / span 4;
      grid-row: 1 / Line2;
    }

    .grid-item2 {
      background: grey;
      text-align: center;
      border: 5px solid black;
    }

    /* Ejem 6: Asignar áreas personalizadas */
    .grid-container {
      display: grid;
      grid-template-rows: 100px 100px 100px;
      grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
      grid-gap: 5px;
      grid-template-areas:
        "area1 area1 area1 area1 area1"
        "area2 area2 . area3 area3"
        "area2 area2 area4 area4 area4";
    }

    /* Ejem 7: Alinear elementos en la rejilla */
    .grid-item1 {
      background: blue;
      text-align: center;
      border: 5px solid black;
      grid-area: area1;
    }

    .grid-item2 {
      background: red;
      text-align: center;
      border: 5px solid black;
      grid-area: area2;
    }

    .grid-item3 {
      background: green;
      text-align: center;
      border: 5px solid black;
      grid-area: area3;
    }

    .grid-item4 {
      background: yellow;
      text-align: center;
      border: 5px solid black;
      grid-area: area4;
    }

    /* Ejem 8: Alinear la rejilla dentro del contenedor */
    .grid-container {
      display: grid;
      grid-template-rows: 100px 100px 100px 100px;
      grid-template-columns: 100px 100px 100px 100px;
      grid-gap: 5px;
      justify-items: center;
      align-items: center;
    }

    .grid-item1 {
      background: grey;
      text-align: center;
      border: 5px solid black;
      width: 50px;
      height: 50px;
    }

    .grid-item2 {
      background: blue;
      text-align: center;
      border: 5px solid black;
      width: 50px;
      height: 50px;
      justify-self: start;
      align-self: start;
    }

    /* Ejem 9: Rejilla con tamaños automáticos */
    .grid-container {
      display: grid;
      width: 800px;
      height: 800px;
      background: yellow;
      grid-template-rows: 100px 100px 100px 100px;
      grid-template-columns: 100px 100px 100px 100px;
      grid-gap: 5px;
      justify-content: space-evenly;
      align-content: center;
    }

    /* Ejem 10: Valores mínimos y máximos en la rejilla */
    .grid-container {
      display: grid;
      width: 800px;
      height: 800px;
      grid-template-rows: repeat(auto-fit, 100px);
      grid-template-columns: repeat(auto-fit, 100px);
      grid-gap: 5px;
    }

    /* Ejem 11: Diseño responsivo con valores mínimos y máximos */
    .grid-container {
      display: grid;
      grid-auto-rows: 100px;
      grid-auto-columns: 100px;
      grid-gap: 5px;
    }

    /* Ejem 13: Diseño responsivo con valores mínimos y máximos en columnas */
    .grid-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
      grid-gap: 5px;
      justify-items: center;
      align-items: center;
    }

    .grid-item1 {
      background: grey;
      text-align: center;
      border: 5px solid black;
      width: 100px;
      height: 100px;
    }
  </style>
</head>
<body>
  <div class="grid-container">
    <div class="grid-item1">1</div>
    <div class="grid-item2">2</div>
    <div class="grid-item3">3</div>
  </div>
</body>
</html>
EOF

# Abrir el archivo HTML en un navegador (puedes cambiar el comando para tu navegador específico)
# xdg-open index.html
