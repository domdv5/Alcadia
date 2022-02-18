const connection = require("../../config/db");
const bcryptjs = require('bcryptjs');
const express = require('express');
const router = express.Router()

router.get('/login', (req, res) => {
  res.render("../views/login.ejs")
})

router.get('/prove', (req, res) => {
  res.render("../views/prueba.ejs");
})

router.get('/users', (req, res) => {
  if (req.session.login) {
    connection.query(`SELECT * FROM cds`, (err, result) => {

      if (err) {
        res.send(err)
      } else {
        res.render("../views/registroUsuario.ejs", {
          data: result,
        })
      }
    })
  } else {
    res.render('../views/login.ejs')
  }
})

router.get('/activities', (req, res) => {

  const id = req.session.id_cds

  if (req.session.login) {
    connection.query("SELECT * FROM cds WHERE IdCds = ? ", [id], (err, result) => {

      

      const id_cds = result[0].IdCds
      const name = result[0].concatenar

      if (err) {
        res.send(err)
      } else {
        res.render("../views/registroActividades.ejs", {
          cds: result,
          id_cds,
          name,
        })
      }
    })

  } else {
    res.render('../views/login.ejs')
  }
})

router.get('/visitorLogin', async (req, res) => {

  const dato = req.session.codigo
  const id = req.session.id_cds

  if (req.session.login) {
    await connection.query(`SELECT actividades.nombre, actividades.IdCds, usuarios.codigo , usuarios.IdCds , cds.concatenar
  FROM actividades,usuarios,cds
  WHERE usuarios.codigo = ? AND actividades.IdCds = ? AND cds.IdCds = ?` , [dato, id, id], (err, result) => {

      const nombre = result[0].concatenar





      if (err) {
        res.send(err)
      } else {
        res.render("../views/ingresoVisitantes.ejs", {
          id,
          nombre,
          rows: result,
        })
      }
    })
  } else {
    res.render('../views/login.ejs')
  }
})

router.get('/visitors', (req, res) => {

  const id = req.session.id_cds
  const code = req.session.key



  if (req.session.login) {
    connection.query(`SELECT * FROM cds WHERE IdCds = ?`, [id], (err, result) => {

      const id_cds = result[0].IdCds
      const name = result[0].concatenar

      if (err) {
        console.log(errr);
      } else {
        res.render('../views/registroVisitantes.ejs', {
          id_cds,
          name,
          code,     
        })
      }
    })
  } else {
    res.render('../views/login.ejs')
  }

})

router.get('/activitiesTable', (req, res) => {

  const id = req.session.id_cds

  if (req.session.login) {
    connection.query(`SELECT actividades.*, cds.* FROM actividades
    INNER JOIN cds ON cds.IdCds = actividades.IdCds WHERE actividades.IdCds = ?`, [id], (err, result) => {



      if (err) {
        res.send(err);
      } else {
        res.render("../views/tablaActividades.ejs", {
          actividad: result
        })
      }

    })
  } else {
    res.render('../views/login.ejs')
  }
})

router.get('/cdsTable', (req, res) => {

  if (req.session.login) {
    connection.query("SELECT * FROM cds", (err, result) => {
      if (err) {
        res.send(err);
      } else {
        res.render("../views/tablaCds.ejs", {
          cds: result
        })
      }
    })
  } else {
    res.render('../views/login.ejs')
  }

})

router.get('/usersTable', (req, res) => {

  if (req.session.login) {
    connection.query(`SELECT usuarios.*, cds.concatenar FROM usuarios
    INNER JOIN cds ON usuarios.IdCds = cds.IdCds`, (err, result) => {
      if (err) {
        res.send(err);
      } else {
        res.render("../views/tablaUsuarios.ejs", {
          data: result
        })
      }
    })
  } else {
    res.render('../views/login.ejs')
  }

})

router.get('/visitorTable', async (req, res) => {

  const id = req.session.id_cds

  if (req.session.login) {
    connection.query(`SELECT ingreso_visitantes.*, cds.concatenar FROM ingreso_visitantes
    INNER JOIN cds on ingreso_visitantes.IdCds = cds.IdCds
    WHERE ingreso_visitantes.IdCds = ? `, [id], (err, result) => {

      if (err) {
        res.send(err);
      } else {
        res.render("../views/tablaVisitantes.ejs", {
          visitor: result
        })
      }
    })
  } else {
    res.render('../views/login.ejs')
  }
})
router.post("/GetVisitorTypes", async (req, res) => {
  const id = req.session.id_cds

  connection.query(`SELECT * FROM actividades WHERE IdCds = ?`, [id], (err, result) => {
   // console.log(result)
    res.json(result)
  });
});
router.get('/registerTable', (req, res) => {

  const id = req.session.id_cds

  if (req.session.login) {
    connection.query(`SELECT visitantes.*, cds.* FROM visitantes
    INNER JOIN cds ON cds.IdCds = visitantes.IdCds WHERE visitantes.IdCds = ?`, [id], (err, result) => {
      if (err) {
        res.send(err);
      } else {
        res.render("../views/tablaRegistros.ejs", {
          registro: result
        })
      }
    })
  } else {
    res.render('../views/login.ejs')
  }

})

router.get('/registerCds', async (req, res) => {

  if (req.session.login) {
    await connection.query("SELECT * FROM cds", (err, result) => {
      if (err) {
        res.send(err);
      } else {
        res.render("../views/registroCds", {
          cds: result
        })
      }
    })
  } else {
    res.render('../views/login.ejs')
  }

})

router.get('/delete.activities/:id', (req, res) => {

  const id = req.params.id

  connection.query("DELETE FROM Actividades WHERE id_actividades = ?", [id], (err, result) => {

    if (result) {
      res.render('../views/tablaActividades.ejs', {
        actividad: result,
        alert: true,
        title: "REGISTRO ELIMINADO",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'activitiesTable'
      })
    } else {
      res.render('../views/tablaActividades.ejs', {
        alert: true,
        title: 'Error',
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'activitiesTable'
      })
    }
  })
})
router.get('/delete.cds/:id', (req, res) => {

  const id = req.params.id

  connection.query("DELETE FROM cds WHERE IdCds = ? ", [id], (err, result) => {
    if (result) {
      res.render('../views/tablaCds.ejs', {
        alert: true,
        cds: result,
        title: "REGISTRO ELIMINADO",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'cdsTable'
      })
    } else {
      res.render('../views/tablaCds.ejs', {
        alert: true,
        title: 'Error',
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'cdsTable'
      })
    }
  })
})
router.get('/delete.registro/:id', (req, res) => {

  const id = req.params.id

  connection.query("DELETE FROM visitantes WHERE numero_documento = ? ", [id], (err, result) => {
    
    if (result) {
      res.render('../views/tablaRegistros.ejs', {
        alert: true,
        registro: result,
        title: "REGISTRO ELIMINADO",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'registerTable'
      })
    } else {
      res.render('../views/tablaRegistros.ejs', {
        alert: true,
        title: 'Error',
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'registerTable'
      })
    }
  })
})
router.get('/delete.data/:id', (req, res) => {

  const id = req.params.id

  connection.query("DELETE FROM usuarios WHERE id_usuarios = ? ", [id], (err, result) => {
    if (result) {
      res.render('../views/tablaUsuarios.ejs', {
        alert: true,
        data: result,
        title: "REGISTRO ELIMINADO",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'usersTable'
      })
    } else {
      res.render('../views/tablaUsuarios.ejs', {
        alert: true,
        title: 'Error',
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'usersTable'
      })
    }
  })
})
router.get('/delete.visitante/:id', (req, res) => {

  const id = req.params.id

  connection.query("DELETE FROM ingreso_visitantes WHERE id_visitantes = ? ", [id], (err, result) => {
    if (result) {
      res.render('../views/tablaVisitantes.ejs', {
        alert: true,
        visitor: result,
        title: "REGISTRO ELIMINADO",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'visitorTable'
      })
    } else {
      res.render('../views/tablaVisitantes.ejs', {
        alert: true,
        title: 'Error',
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'visitorTable'
      })
    }
  })
})
router.post("/edit.activities/:id", async (req, res) => {

  const id = req.params.id;
  const data = req.body

  await connection.query("UPDATE Actividades SET ? WHERE id_actividades = ?", [data, id], (err, result) => {
    if (result) {
      res.render('../views/tablaActividades.ejs', {
        alert: true,
        actividad: result,
        data: result,
        title: "ACTUALIZACIÓN EXITOSA",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'activitiesTable'
      })
    } else {
      res.render('../views/tablaActividades.ejs', {
        alert: true,
        title: 'Error',
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'activitiesTable'
      })
    }
  })
})
router.post("/edit.cds/:id", async (req, res) => {

  const id = req.params.id;
  const data = req.body


  await connection.query("UPDATE cds SET ? WHERE IdCds = ?", [data, id], (err, result) => {
    if (result) {
      res.render('../views/tablaCds.ejs', {
        alert: true,
        cds: result,
        title: "ACTUALIZACIÓN EXITOSA",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'cdsTable'
      })
    } else {
      res.render('../views/tablaCds.ejs', {
        alert: true,
        title: 'Error',
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'cdsTable'
      })
    }
  })
})
router.post("/edit.users/:id", async (req, res) => {

  const id = req.params.id;
  const data = req.body



  await connection.query("UPDATE usuarios SET ? WHERE id_usuarios = ?", [data, id], (err, result) => {
    if (result) {
      res.render('../views/tablaUsuarios.ejs', {
        alert: true,
        data: result,
        title: "ACTUALIZACIÓN EXITOSA",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'usersTable'
      })
    } else {
      res.render('../views/tablaUsuarios.ejs', {
        alert: true,
        title: 'Error',
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'usersTable'
      })
    }
  })
})
router.post("/edit.registro/:id", async (req, res) => {

  const id = req.params.id;
  const data = req.body

  await connection.query("UPDATE visitantes SET ? WHERE numero_documento = ?", [data, id], (err, result) => {
    if (result === undefined) {
      res.render('../views/tablaRegistros.ejs', {
        alert: true,
        visitor: result,
        registro: result,
        id_cds: result,
        name: result,
        title: "Identificacion duplicada",
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'registerTable'
      })
    } else {
      res.render('../views/tablaRegistros.ejs', {
        alert: true,
        visitor: result,
        registro: result,
        id_cds: result,
        name: result,
        title: 'ACTUALIZACIÓN EXITOSA',
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'registerTable'
      })
    }
  })
})

router.post('/edit.ingreso/:id' , async (req,res)=>{

  const id = req.params.id;
  const data = req.body


  await connection.query("UPDATE ingreso_visitantes SET ? WHERE id_visitantes  = ?", [data, id], (err, result) =>{
    if (result) {
      res.render('../views/tablaVisitantes.ejs', {
        alert: true,
        visitor: result,
        cds: result,
        title: "ACTUALIZACIÓN EXITOSA",
        icon: 'success',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'visitorTable'
      })
    } else {
      res.render('../views/tablaVisitantes.ejs', {
        alert: true,
        title: 'Error',
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'visitorTable'
      })
    }
  })
})


router.post('/addUsers', async (req, res) => {

  const { IdCds, codigo, correo, pass, telefono, rol } = req.body
  let passwordHaash = await bcryptjs.hash(pass, 8);

  const newUser = {
    IdCds,
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
        ruta: 'users'
      })
    }
  })
})

router.post('/addActivities', async (req, res) => {

  const data = req.body


console.log(data)

  await connection.query('INSERT INTO actividades SET ?', [data], (err, result) => {

    if (result) {
      res.render('../views/registroActividades.ejs', {
        alert: true,
        cds: result,
        nombre: result,
        id: result,
        id_cds: result,
        name: result,
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
 

  const enfoque = data['enfoque_diferencial[]'];

  data.enfoque_diferencial = Array.isArray(enfoque) ? enfoque.join(', ') : enfoque;

  delete data['enfoque_diferencial[]'];
  

  await connection.query('INSERT INTO visitantes SET ?', [data], (err, result) => {
    console.log(err)
    if (result === undefined) {
      res.render('../views/registroVisitantes.ejs', {
        alert: true,
        id_cds: result,
        name: result,
        title: "Error al registrar",
        icon: 'error',
        showConfirmButton: false,
        timer: 2500,
        ruta: 'visitors'
      })
    } else {
      res.render('../views/registroVisitantes.ejs', {
        alert: true,
        id_cds: result,
        name: result,
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
    concatenar: nombreCompleto
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
  const id =  req.session.id_cds 




  await connection.query('INSERT INTO ingreso_visitantes SET ?', [data], (err, result) => {
    if (result) {
      res.render('../views/ingresoVisitantes.ejs', {
        alert: true,
        id:result,
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
    await connection.query(`SELECT usuarios.*, cds.concatenar FROM usuarios
    INNER JOIN cds ON usuarios.IdCds = cds.IdCds WHERE usuarios.codigo = ?`, [codigo], (err, result) => {




      req.session.nombre = result[0].concatenar
      req.session.codigo = result[0].codigo
      req.session.id_cds = result[0].IdCds
      req.session.key = result[0].administrador





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
        req.session.login = true
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

  const date = { numero_documento } = req.body




  await connection.query('SELECT * FROM visitantes WHERE numero_documento = ? ', [numero_documento], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  })
})

router.get('/logout', (req, res) => {
  req.session.destroy(() => {
    res.render('../views/login.ejs')
  })
})

module.exports = router