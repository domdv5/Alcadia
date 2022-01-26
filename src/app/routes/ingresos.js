const connection = require("../../config/db");
const bcryptjs = require('bcryptjs');
const express = require('express');
const router = express.Router()

router.get('/login', (req, res) => {
  res.render("../views/login.ejs");
})

router.get('/prove', (req, res) => {
  res.render("../views/prueba.ejs");
})

router.get('/users', (req, res) => {
  connection.query("SELECT * from cds;", (err, result) => {
    if (err) {
      res.send(err)
    } else {
      res.render("../views/registroUsuario.ejs", {
        data: result,
      })
    }
  })
})

router.get('/activities', (req, res) => {
  connection.query("SELECT * FROM cds", (err, result) => {

    if (err) {
      res.send(err)
    } else {
      res.render("../views/registroActividades.ejs", {
        cds: result
      })
    }
  })
})






router.get('/visitorLogin', async (req, res) => {

  const dato = req.session.codigo


  await connection.query(`SELECT actividades.nombre, usuarios.codigo , usuarios.nombre_cds_telecentro
  FROM actividades,usuarios 
  WHERE usuarios.codigo = ?` , [dato], (err, result) => {

    const nombre = result[0].nombre_cds_telecentro

    if (err) {
      res.send(err)
    } else {
      res.render("../views/ingresoVisitantes.ejs", {
        nombre,
        rows: result,
      })
    }
  })
})

router.get('/visitors', (req, res) => {
  res.render("../views/registroVisitantes.ejs");
})

router.get('/activitiesTable', (req, res) => {
  connection.query("SELECT * FROM actividades", (err, result) => {
    console.log(result);
    if (err) {
      res.send(err);
    } else {
      res.render("../views/tablaActividades.ejs", {
        actividad: result
      })
    }
  })
})

router.get('/cdsTable', (req, res) => {
  connection.query("SELECT * FROM cds", (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.render("../views/tablaCds.ejs", {
        cds: result
      })
    }
  })
})
router.get('/registerTable', (req, res) => {
  connection.query("SELECT * FROM visitantes", (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.render("../views/tablaRegistros.ejs", {
        registro: result
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

router.get('/delete.activities/:id', (req, res) => {

  const id = req.params.id

  connection.query("DELETE FROM Actividades WHERE id = ?", [id], (err, result) => {
    if (err) {
      res.send(err)
    } else {
      res.redirect('/activitiesTable')
    }
  })
})

router.get('/delete.cds/:id', (req, res) => {

  const id = req.params.id

  connection.query("DELETE FROM cds WHERE id = ? ", [id], (err, result) => {
    if (err) {
      res.send(err)
    } else {
      res.redirect('/cdsTable')
    }
  })
})
router.get('/delete.registro/:id', (req, res) => {

  const id = req.params.id

  connection.query("DELETE FROM visitantes WHERE id = ? ", [id], (err, result) => {
    if (err) {
      res.send(err)
    } else {
      res.redirect('/registerTable')
    }
  })
})
router.post("/edit.activities/:id", async (req, res) => {

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

router.post("/edit.cds/:id", async (req, res) => {

  const id = req.params.id;
  const data = req.body

  await connection.query("UPDATE cds SET ? WHERE id = ?", [data, id], (err, result) => {
    if (err) {
      res.send(err)
    } else {
      res.redirect('/cdsTable')
    }
  })
})
router.post("/edit.registro/:id", async (req, res) => {

  const id = req.params.id;
  const data = req.body

  await connection.query("UPDATE visitantes SET ? WHERE id = ?", [data, id], (err, result) => {
    if (err) {
      res.send(err)
    } else {
      res.redirect('/registerTable')
    }
  })
})

router.post('/addUsers', async (req, res) => {

  const data = req.body
  console.log(data);

  const { nombre_cds_telecentro, codigo, correo, pass, telefono, rol } = req.body
  let passwordHaash = await bcryptjs.hash(pass, 8);

  const newUser = {
    nombre_cds_telecentro,
    codigo,
    correo,
    pass: passwordHaash,
    telefono,
    rol,
  }
  await connection.query("INSERT INTO Usuarios SET ? ", [newUser], (error, rows) => {
    if (rows === undefined) {
      res.render('../views/registroUsuario.ejs', {
        data: rows,
        alert: true,
        title: "Identificacion duplicada",
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'users'
      })
    } else {
      res.render('../views/registroUsuario.ejs', {
        data: rows,
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
        cds: result,
        title: "Registro Guardado",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'activities '
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
  await connection.query('INSERT INTO visitantes SET ?', [data], (err, result) => {
    console.log(result);
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
  const { espacio, comuna, nombre, direccion, horario, correo, telefono, nombreCoordinador, concatenar } = req.body

  const nombreCompleto = espacio.concat(" " + nombre)

  const newCds = {
    espacio,
    comuna,
    nombre,
    direccion,
    horario,
    correo,
    telefono,
    nombreCoordinador,
    concatenar : nombreCompleto
  }

  await connection.query('INSERT INTO cds SET ?', [newCds], (err, result) => {
    if (result === undefined) {
      res.render('../views/registroCds.ejs', {
        nombreCompleto,
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

  await connection.query('INSERT INTO ingreso_visitantes SET ?', [data], (err, result) => {
    if (result) {
      res.render('../views/ingresoVisitantes.ejs', {
        alert: true,
        nombre: result,
        rows: result,
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

  const { codigo, pass } = req.body

  if (codigo && pass) {
    await connection.query('SELECT * FROM usuarios WHERE codigo = ?', [codigo], (err, result) => {

      req.session.codigo = result[0].codigo

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

router.post('/idValidation', async (req, res) => {

  const { numero_documento } = req.body

  await connection.query('SELECT * FROM visitantes WHERE numero_documento = ? ', [numero_documento], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  })
})


module.exports = router