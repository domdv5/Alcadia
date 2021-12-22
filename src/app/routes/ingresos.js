const connection = require("../../config/db");
const bcryptjs = require('bcryptjs');
const express = require('express')
const router = express.Router()


router.get('/login', (req, res) => {
  res.render("../views/login.ejs");
})

router.get('/users', (req, res) => {
  res.render("../views/registroUsuario.ejs");
})
router.get('/activities', (req, res) => {
  res.render("../views/registroActividades.ejs");
})


router.get('/visitors', (req, res) => {
  res.render("../views/registroVisitantes.ejs");
})
router.get('/visitorLogin', (req, res) => {
  res.render("../views/ingresoVisitantes.ejs");
})


router.get('/activitiesTable', (req, res) => {
  connection.query("SELECT * FROM actividades", (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.render("../views/tablaActividades.ejs", {
        actividad: result
      })
    }
  })
})
router.get('/registerCds', async (req, res) => {

  await connection.query("SELECT * FROM cds", (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.render("../views/registroCds", {
        cds: result
      })
    }
  })
})

router.post("/edit/:id", async (req, res) => {

  const id = req.params.id;
  const data = req.body

  await connection.query("UPDATE Actividades SET ? WHERE id = ?", [data, id], (err, result) => {
    if (err) {
      res.send(err)
    } else {
      res.redirect('/activitiesTable')
    }
  })
})


router.get('/delete/:id', (req, res) => {

  const id = req.params.id

  connection.query("DELETE FROM Actividades WHERE id = ?", [id], (err, result) => {
    if (err) {
      res.send(err)
    } else {
      res.redirect('/activitiesTable')
    }
  })
})




router.post('/addUsers', async (req, res) => {

  const { tipoDocumento, cedula, nombre, correo, pass, telefono, rol } = req.body
  let passwordHaash = await bcryptjs.hash(pass, 8);

  const newUser = {
    tipoDocumento,
    cedula,
    nombre,
    correo,
    pass: passwordHaash,
    telefono,
    rol,
  }
  await connection.query("INSERT INTO Usuarios SET ? ", [newUser], (error, rows) => {
    if (rows === undefined) {
      res.render('../views/registroUsuario.ejs', {
        alert: true,
        title: "Identificacion duplicada",
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'users'
      })
    } else {
      res.render('../views/registroUsuario.ejs', {
        alert: true,
        title: 'Registro Satisfactorio',
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'login'
      })
    }
  })
})



router.post('/addActivities', async (req, res) => {

  const data = req.body

  await connection.query('INSERT INTO actividades SET ?', [data], (err, result) => {

    if (result) {
      res.render('../views/registroActividades.ejs', {
        alert: true,
        title: "Registro Guardado",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'activitiesTable'
      })
    } else {
      res.render('../views/registroActividades.ejs', {
        alert: true,
        title: 'Error',
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'activities'
      })
    }
  })
})

router.post('/addVisitors', async (req, res) => {
  const data = req.body
  console.log(data);
  await connection.query('INSERT INTO visitantes SET ?', [data], (err, result) => {
    if (result === undefined) {
      res.render('../views/registroVisitantes.ejs', {
        alert: true,
        title: "Identificacion duplicada",
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'visitors'
      })
    } else {
      res.render('../views/registroVisitantes.ejs', {
        alert: true,
        title: 'Registro Satisfactorio',
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'visitors'
      })
    }
  })
})

router.post('/addCds', async (req, res) => {
  const data = req.body
  console.log(data);
  await connection.query('INSERT INTO cds SET ?', [data], (err, result) => {
    if (result === undefined) {
      res.render('../views/registroCds.ejs', {
        alert: true,
        title: "intente de nuevo",
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'registerCds'
      })
    } else {
      res.render('../views/registroCds.ejs', {
        alert: true,
        title: 'Registro Satisfactorio',
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'registerCds'
      })
    }
  })
})

router.post('/visitorsEntry', async (req, res) => {

  const data = req.body

  await connection.query('INSERT INTO ingreso_visitantes SET ?', [data], (err, rows) => {
    if (rows) {
      res.render('../views/ingresoVisitantes.ejs', {
        alert: true,
        title: "Ingreso Exitoso",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'visitorLogin'
      })
    }
  })

})


router.post('/singUp', async (req, res) => {

  const { cedula, pass } = req.body

  if (cedula && pass) {
    await connection.query('SELECT * FROM usuarios WHERE cedula = ?', [cedula], (err, result) => {
      if (result.length === 0 || !(bcryptjs.compareSync(pass, result[0].pass))) {
        res.render('../views/login.ejs', {
          alert: true,
          title: 'Nombre de usuario y/o contraseña incorrecto(s))',
          message: 'Intente nuevamente',
          icon: 'error',
          showConfirmButton: true,
          timer: 4000,
          ruta: 'login'
        })
      } else {
        res.render('../views/login.ejs', {
          alert: true,
          title: 'Inicio de sesion satisfactorio',
          message: 'Bienvenido',
          icon: 'success',
          showConfirmButton: false,
          timer: 4000,
          ruta: 'visitors',
        })
      }
    })
  }
})

module.exports = router