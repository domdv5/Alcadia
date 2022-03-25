const app = require ('./config/server');
app.use(require('./app/routes/controllers'))





app.listen(app.get('port'), () => {
  console.log('servidor en el puerto: ','http://localhost:5500')

})