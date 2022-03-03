const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'us-cdbr-east-05.cleardb.net',
  user: 'bef3b39afd51d3',
  password:'1f2fd213',
  database: 'heroku_30cba212e18e6ef',
});

connection.connect((err) => {
  if (err) {
    console.log("el error de la conexion a BD es: " + err)
    return;
  }
  console.log("conectado exitosamente a la BD")
});

module.exports = connection;