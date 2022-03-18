const connection = require("../../config/db");
const bcryptjs = require("bcryptjs");
const express = require("express");
const router = express.Router();

router.get("/", (req, res) => {
  res.render("../views/login.ejs");
});

router.get("/users", (req, res) => {
  const name = req.session.concatenar
  const key = req.session.key;

  if (req.session.login) {
    connection.query(`SELECT * FROM cds`, (err, result) => {
      if (err) {
        res.send(err);
      } else {
        res.render("../views/registroUsuario.ejs", {
          data: result,
          name,
          key,
          titulo: 'Registro Usuarios'
        });
      }
    });
  } else {
    res.render("../views/login.ejs");
  }
});

router.get("/activities", (req, res) => {
  const id = req.session.id_cds;
  const key = req.session.key;
  const name = req.session.concatenar

  if (req.session.login) {
    if (key === 1) {
      connection.query("SELECT * FROM cds WHERE concatenar NOT LIKE 'ADMINISTRADOR%'", (err, result) => {
        if (err) {
          res.send(err);
        } else {
          res.render("../views/registroActividades.ejs", {
            cds: result,
            rows: result,
            name,
            key,
            name,
            titulo: 'Registro Actividades'
          });
        }
      });
    } else {
      connection.query(
        "SELECT * FROM cds WHERE IdCds = ? ", [id], (err, result) => {
          const id_cds = result[0].IdCds;
          const comuna = result[0].Comuna;

          if (err) {
            res.send(err);
          } else {
            res.render("../views/registroActividades.ejs", {
              cds: result,
              rows: result,
              id_cds,
              name,
              key,
              comuna,
              titulo: 'Registro Actividades'
            });
          }
        }
      );
    }
  } else {
    res.render("../views/login.ejs");
  }
});

router.get("/ingresoVisitantes", async (req, res) => {
  const key = req.session.key;
  const dato = req.session.codigo;
  const id = req.session.id_cds;
  const name = req.session.concatenar

  if (req.session.login) {
    if (key === 1) {
      await connection.query(
        `SELECT  actividades.id_actividades,  usuarios.cedula , usuarios.IdCds , 
      cds.concatenar, CONCAT(actividades.nombre, ' ' , actividades.fecha_inicio) 
      AS fullActivitie
      FROM actividades,usuarios,cds`,
        (err, result) => {
          if (err) {
            console.log(err);
          } else {
            res.render("../views/ingresoVisitantes.ejs", {
              id,
              name,
              rows: result,
              key,
              titulo: 'Ingreso Visitantes'
            });
          }
        }
      );
    } else {
      await connection.query(
        `SELECT  actividades.id_actividades,  usuarios.cedula , usuarios.IdCds , 
      cds.concatenar, CONCAT(actividades.nombre, ' ' , actividades.fecha_inicio) 
      AS fullActivitie
      FROM actividades,usuarios,cds
      WHERE usuarios.cedula = ? AND actividades.IdCds = ? AND cds.IdCds = ?`,
        [dato, id, id],
        (err, result) => {
          if (err) {
            console.log(err);
          } else {
            res.render("../views/ingresoVisitantes.ejs", {
              id,
              name,
              rows: result,
              key,
              titulo: 'Ingreso Visitantes'
            });
          }
        }
      );
    }
  } else {
    res.render("../views/login.ejs");
  }
});

router.get("/visitors", (req, res) => {
  const key = req.session.key;
  const id = req.session.id_cds;

  if (req.session.login) {
    connection.query(`SELECT * FROM cds WHERE IdCds = ?`, [id], (err, result) => {
      const id_cds = result[0].IdCds;
      const name = req.session.concatenar = result[0].concatenar;

      if (err) {
        console.log(errr);
      } else {
        res.render("../views/registroVisitantes.ejs", {
          id_cds,
          name,
          key,
          titulo: 'Registro Visitantes'
        });
      }
    }
    );
  } else {
    res.render("../views/login.ejs");
  }
});

router.get("/activitiesTable", (req, res) => {
  const id = req.session.id_cds;
  const key = req.session.key;

  if (req.session.login) {
    if (key === 1) {
      connection.query(
        `SELECT actividades.*, cds.* FROM actividades
      INNER JOIN cds ON cds.IdCds = actividades.IdCds`,
        (err, result) => {
          if (err) {
            res.send(err);
          } else {
            res.render("../views/tablaActividades.ejs", {
              actividad: result,
              key,
              titulo: 'Tabla registro actividades'
            });
          }
        }
      );
    } else {
      connection.query(
        `SELECT actividades.*, cds.* FROM actividades
      INNER JOIN cds ON cds.IdCds = actividades.IdCds WHERE actividades.IdCds = ?`,
        [id],
        (err, result) => {
          if (err) {
            res.send(err);
          } else {
            res.render("../views/tablaActividades.ejs", {
              actividad: result,
              key,
              titulo: 'Tabla registro actividades'
            });
          }
        }
      );
    }
  } else {
    res.render("../views/login.ejs");
  }
});

router.get("/cdsTable", (req, res) => {
  if (req.session.login) {
    connection.query("SELECT * FROM cds", (err, result) => {
      if (err) {
        res.send(err);
      } else {
        res.render("../views/tablaCds.ejs", {
          cds: result,
          titulo: 'Tabla CDS y telecentros'
        });
      }
    });
  } else {
    res.render("../views/login.ejs");
  }
});

router.get("/usersTable", (req, res) => {
  if (req.session.login) {
    connection.query(`SELECT usuarios.*, cds.concatenar FROM usuarios INNER JOIN cds ON usuarios.IdCds = cds.IdCds`,
      (err, result) => {
        if (err) {
          res.send(err);
        } else {
          res.render("../views/tablaUsuarios.ejs", {
            data: result,
            titulo: 'Tabla Usuarios'
          });
        }
      }
    );
  } else {
    res.render("../views/login.ejs");
  }
});

router.get("/tablaIngresos", async (req, res) => {
  const id = req.session.id_cds;
  const key = req.session.key;

  if (req.session.login) {
    if (key === 1) {
      connection.query(
        `SELECT  actividades.nombre ,ingreso_visitantes.id_ingresos, visitantes.*, cedula, fecha, hora, concatenar
    FROM ingreso_visitantes 
      JOIN visitantes ON visitantes.numero_documento = ingreso_visitantes.cedula
      JOIN cds ON  ingreso_visitantes.IdCds=cds.IdCds
      JOIN actividades ON ingreso_visitantes.id_actividades = actividades.id_actividades`,
        (err, result) => {
          if (err) {
            res.send(err);
          } else {
            res.render("../views/tablaIngresos.ejs", {
              visitor: result,
              titulo: 'Tabla Ingreso Visitantes'
            });
          }
        }
      );
    } else {
      connection.query(
        `SELECT  actividades.nombre ,ingreso_visitantes.id_ingresos, visitantes.*, cedula, fecha, hora, concatenar
        FROM ingreso_visitantes 
          JOIN visitantes ON visitantes.numero_documento = ingreso_visitantes.cedula
          JOIN cds ON  ingreso_visitantes.IdCds=cds.IdCds
          JOIN actividades ON ingreso_visitantes.id_actividades = actividades.id_actividades 
          WHERE cds.IdCds = ? `,
        [id],
        (err, result) => {
          if (err) {
            res.send(err);
          } else {
            res.render("../views/tablaIngresos.ejs", {
              visitor: result,
              titulo: 'Tabla Ingreso Visitantes'
            });
          }
        }
      );
    }
  } else {
    res.render("../views/login.ejs");
  }
});


router.get("/visitorsTable", (req, res) => {
  const key = req.session.key;
  const id = req.session.id_cds;

  if (req.session.login) {
    if (key === 1) {
      connection.query(
        `SELECT visitantes.*, cds.* FROM visitantes
      INNER JOIN cds ON cds.IdCds = visitantes.IdCds`,
        (err, result) => {
          if (err) {
            console.log(err);
          } else {
            res.render("../views/tablaVisitantes.ejs", {
              registro: result,
              titulo: 'Tabla Registro Visitantes'
            });
          }
        }
      );
    } else {
      connection.query(
        `SELECT visitantes.*, cds.* FROM visitantes
      INNER JOIN cds ON cds.IdCds = visitantes.IdCds WHERE visitantes.IdCds = ?`, [id],
        (err, result) => {
          if (err) {
            res.send(err);
          } else {
            res.render("../views/tablaVisitantes.ejs", {
              registro: result,
              titulo: 'Tabla Registro Visitantes'
            });
          }
        }
      );
    }
  } else {
    res.render("../views/login.ejs");
  }
});

router.get("/registerCds", async (req, res) => {
  const key = req.session.key;
  const name = req.session.concatenar

  if (req.session.login) {
    await connection.query("SELECT * FROM cds", (err, result) => {
      if (err) {
        res.send(err);
      } else {
        res.render("../views/registroCds", {
          cds: result,
          key,
          name,
          titulo: 'Registro CDS o telecentros'
        });
      }
    });
  } else {
    res.render("../views/login.ejs");
  }
});

router.delete("/delete.activities/:id", (req, res) => {
  const id = req.params.id;

  connection.query("DELETE FROM Actividades WHERE id_actividades = ?", [id], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  }
  );
});

router.delete("/delete.cds/:id", (req, res) => {
  const id = req.params.id;

  connection.query("DELETE FROM cds WHERE IdCds = ? ", [id], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  });
});

router.delete("/delete.registro/:id", (req, res) => {
  const id = req.params.id;


  connection.query("DELETE FROM visitantes WHERE id_visita = ? ", [id], (err, result) => {
    if (result) {
      res.json({ code: 200 })
    } else {
      res.json({ code: 400 })
    }
  }
  );
});

router.delete("/delete.users/:id", (req, res) => {
  const id = req.params.id;

  connection.query("DELETE FROM usuarios WHERE id_usuarios = ? ", [id], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  }
  );
});

router.delete("/delete.visitante/:id", (req, res) => {
  const id = req.params.id;

  connection.query("DELETE FROM ingreso_visitantes WHERE id_ingresos = ? ", [id],
    (err, result) => {
      if (result) {
        res.json({ code: 200 })
      } else {
        res.json({ code: 400 })
      }
    }
  );
});

router.put("/edit.activities/:id", async (req, res) => {
  const id = req.params.id;
  const data = req.body;

  await connection.query("UPDATE Actividades SET ? WHERE id_actividades = ?", [data, id], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  }
  );
});

router.put("/edit.cds/:id", async (req, res) => {
  const id = req.params.id;
  const data = req.body;

  await connection.query("UPDATE cds SET ? WHERE IdCds = ?", [data, id], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  }
  );
});

router.put("/edit.users/:id", async (req, res) => {
  const id = req.params.id;
  const data = req.body;



  await connection.query("UPDATE usuarios SET ? WHERE id_usuarios = ?", [data, id], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  }
  );
});


router.put("/edit.registro/:id", async (req, res) => {
  let id = req.params.id;
  const data = req.body;
  const enfoque = data["enfoque_diferencial[]"];

  data.enfoque_diferencial = Array.isArray(enfoque)
    ? enfoque.join(", ")
    : enfoque;

  delete data["enfoque_diferencial[]"];

  await connection.query("UPDATE visitantes SET ? WHERE id_visita = ?", [data, id], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  }
  );
});

router.post("/edit.ingreso/:id", async (req, res) => {
  const id = req.params.id;
  const data = req.body;

  await connection.query(
    "UPDATE ingreso_visitantes SET ? WHERE id_ingresos  = ?",
    [data, id],
    (err, result) => {
      if (result) {
        res.render("../views/tablaIngresos.ejs", {
          alert: true,
          visitor: result,
          cds: result,
          title: "ACTUALIZACIÓN EXITOSA",
          icon: "success",
          showConfirmButton: false,
          timer: 2500,
          ruta: "visitorTable",
        });
      } else {
        res.render("../views/tablaIngresos.ejs", {
          alert: true,
          title: "Error",
          icon: "error",
          showConfirmButton: false,
          timer: 2500,
          ruta: "visitorTable",
        });
      }
    }
  );
});

router.post("/addUsers", async (req, res) => {
  const { IdCds, cedula, correo, pass, telefono, rol } = req.body;
  let passwordHaash = await bcryptjs.hash(pass, 8);

  const newUser = {
    IdCds,
    cedula,
    correo,
    pass: passwordHaash,
    telefono,
    rol,
  };
  await connection.query("INSERT INTO Usuarios SET ? ", [newUser], (error, rows) => {
    if (rows.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  }
  );
});

router.post("/addActivities", async (req, res) => {
  const key = req.session.key;

  const data = req.body;

  await connection.query("INSERT INTO actividades SET ?", [data], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  }
  );
});

router.post("/addVisitors", async (req, res) => {
  const data = req.body;
  const enfoque = data["enfoque_diferencial[]"];

  data.enfoque_diferencial = Array.isArray(enfoque)
    ? enfoque.join(", ")
    : enfoque;

  delete data["enfoque_diferencial[]"];

  await connection.query("INSERT INTO visitantes SET ?", [data], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  }
  );
});

router.post("/addCds", async (req, res) => {
  const { espacio, comuna, nombre, direccion, horario, telefono, correo, nombreCoordinador } = req.body

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
    concatenar: nombreCompleto,
  }

  await connection.query("INSERT INTO cds SET ?", [newCds], (err, result) => {
    if (result.length === 0) {
      res.json({ code: 400 })
    } else {
      res.json({ code: 200 })
    }
  });
});

router.post("/visitorsEntry", async (req, res) => {
  const data = req.body;
  const id = req.session.id_cds;

  await connection.query("INSERT INTO ingreso_visitantes SET ?", [data], (err, result) => {
    if (result) {
      res.json({ code: 200 })
    }
  }
  );
});

router.post("/singUp", async (req, res) => {
  const { codigo, pass } = req.body;

  if (codigo && pass) {
    await connection.query(`SELECT usuarios.*, cds.concatenar FROM usuarios INNER JOIN cds ON usuarios.IdCds = cds.IdCds WHERE usuarios.cedula = ?`, [codigo], (err, result) => {

      if (result.length === 0 || !(bcryptjs.compareSync(pass, result[0].pass))) {
        res.render("../views/login.ejs", {
          alert: true,
          title: "Cedula y/o contraseña incorrecta",
          message: "Intente nuevamente",
          icon: "warning",
          showConfirmButton: true,
          timer: 4000,
          ruta: "/",
        });
      } else {
        req.session.login = true;
        req.session.nombre = result[0].concatenar;
        req.session.codigo = result[0].cedula;
        req.session.id_cds = result[0].IdCds;
        req.session.key = result[0].rol;
        res.render("../views/login.ejs", {
          alert: true,
          title: "Inicio de sesion satisfactorio",
          message: "Bienvenido",
          icon: "success",
          showConfirmButton: false,
          timer: 4000,
          ruta: "visitors",
        });
      }
    });
  }
})

router.post("/idValidation", async (req, res) => {
  const { numero_documento } = req.body
  await connection.query("SELECT * FROM visitantes WHERE numero_documento = ?", [numero_documento],
    (err, result) => {
      if (result.length === 0) {
        res.json({ code: 400 });
      } else {
        res.json({ code: 200 });
      }
    }
  );
});

router.get("/inputs", (req, res) => {
  const id = req.session.id_cds;

  connection.query("SELECT rol FROM usuarios WHERE IdCds = ?", [id], (err, result) => {
    const rol = result[0].rol;

    if (rol === 1) {
      res.json({ code: 200 });
    } else {
      res.json({ code: 400 });
    }
  }
  );
});

router.post("/documentValidation", async (req, res) => {
  const { cedula } = req.body;

  await connection.query(
    "SELECT cedula FROM usuarios WHERE cedula = ?",
    [cedula],
    (err, result) => {
      if (result.length === 0) {
        res.json({ code: 400 });
      } else {
        res.json({ code: 200 });
      }
    }
  );
});


router.get('/getInfo', (req, res) => {

  const key = req.session.key
  connection.query('SELECT * FROM cds', (err, result) => {
    if (key === 1) {
      if (result.length === 1) {
        res.json({ code: 400 })
      } else {
        res.json({ code: 200 })
      }
    }
  })
})

router.get('/getInfoVisitors', (req, res) => {
  const key = req.session.key
  connection.query('SELECT * FROM visitantes', (err, result) => {
    if (key === 0) {
      if (result.length === 0) {
        res.json({ code: 400 })
      } else {
        res.json({ code: 200 })
      }
    }
  })
})

router.get('/getInfoActivities', (req, res) => {
  const key = req.session.key
  connection.query('SELECT * FROM actividades', (err, result) => {
    if (key === 0) {
      if (result.length === 0) {
        res.json({ code: 400 })
      } else {
        res.json({ code: 200 })
      }
    }
  })
})

router.post('/test', (req,res)=>{
  const {codigo} = req.body

  console.log(codigo);

  connection.query('SELECT Cedula FROM usuarios WHERE cedula = ?', [codigo], (err,result)=>{
    if(result.length === 0){
      res.json({code:400})
    } else{
      res.json({code:200})
    }
  })
})

router.get("/logout", (req, res) => {
  req.session.destroy(() => {
    res.render("../views/login.ejs");
  });
});

module.exports = router;
