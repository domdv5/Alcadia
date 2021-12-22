const app = require ('./config/server');
const connection = require('./config/db')
app.use(require('./app/routes/ingresos'))

app.listen(app.get('port'), () => {
  console.log('servidor en el puerto: ','http://localhost:3000/login');
})