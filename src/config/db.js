const mysql = require('mysql');
/* const connection = mysql.createConnection({
  host: 'us-cdbr-east-05.cleardb.net',
  user: 'bef3b39afd51d3',
  password: '1f2fd213',
  database: 'heroku_30cba212e18e6ef',
}); */

/* connection.connect((err) => {
  if (err) {
    console.log("el error de la conexion a BD es: " + err)
    return;
  }
  console.log("conectado exitosamente a la BD")
});

module.exports = connection */

/* var db_config = {
  host: 'us-cdbr-east-05.cleardb.net',
    user: 'bef3b39afd51d3',
    password: '1f2fd213',
    database: 'heroku_30cba212e18e6ef',
};

 var connection;

function handleDisconnect() {
  connection = mysql.createConnection(db_config); 
                                                  

  connection.connect(function(err) {              
    if(err) {                                     
      console.log('error when connecting to db:', err);
      setTimeout(handleDisconnect, 2000); 
    }                                     
  });                                     
                                           
  connection.on('error', function(err) {
    console.log('db error', err);
    if(err.code === 'PROTOCOL_CONNECTION_LOST') { 
      handleDisconnect();                         
    } else {                                      
      throw err;                                  
    }
  });
}
handleDisconnect(db_config);
 */

const pool = mysql.createPool({
  connectionLimit: 100,
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE
})

pool.getConnection((err, connection) => {
  if (err) {
    if (err.code === 'PROTOCOL_CONNECTION_LOST') {
      console.error('DATABASE CONNECTION WAS CLOSED')
    }
  }

  if (connection) connection.release()
  console.log('DB IS CONNECTED')
  return
})
 module.exports = pool

