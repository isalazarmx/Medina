google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);
google.setOnLoadCallback(drawChart2);
function drawChart() {

  var data = google.visualization.arrayToDataTable([
    ['cantidad', 'Meta', 'Obtenido'],
    ['Producto 1',  1000,      400],
    ['Producto 2',  1170,      460],
    ['Producto 3',  5660,       1120],
    ['Producto 4',  1030,      540],
    ['Producto 5',  1170,      460]
  ]);

  var options = {
    title: 'Proyecciones',
    hAxis: {title: 'Proyeccion actual', titleTextStyle: {color: 'Black'}}
  };

  var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

  chart.draw(data, options);

}
function drawChart2() {

  var data = google.visualization.arrayToDataTable([
    ['cantidad', 'Meta', 'Obtenido'],
    ['Producto 1',  1000,      400],
    ['Producto 2',  1170,      460],
    ['Producto 3',  5660,       1120],
    ['Producto 4',  1030,      540],
    ['Producto 5',  1170,      460]
  ]);

  var options = {
    title: 'Meta diaria',
    hAxis: {title: 'resulltado hasta el momento', titleTextStyle: {color: 'Black'}}
  };

  var chart = new google.visualization.BarChart(document.getElementById('chart_div2'));

  chart.draw(data, options);

}

