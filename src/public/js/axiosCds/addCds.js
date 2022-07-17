const form = document.getElementById('cdsForm')


form.addEventListener('submit', (e) => {

  const value = document.getElementById("espacio").value



  e.preventDefault();

  let contador = 0
  let contador1 = 0
  let contador2 = 0

  if (value === 'ADMINISTRADOR') {
    document.querySelectorAll("input").forEach((input) => {
      const className = input.className
      if (className === `form-control is-valid`) {
        contador++
      }
    })
  }

  if (value !== 'ADMINISTRADOR') {
    document.querySelectorAll("input").forEach((input) => {
      const className = input.className
      if (className.includes(`form-control is-valid`)) {
        contador1++
      }
    })
  }

  document.querySelectorAll("select").forEach((select) => {
    if (select.value !== '') {
      contador2++
    }
  })

  console.log(contador1);


  if ((contador === 3 && contador2 === 2) || (contador1 === 5 && contador2 === 2) || (contador === 3 && contador2 === 1)) {
    const formData = Object.fromEntries(new FormData(form))
    const url = location.origin + '/addCds'

    axios({
      method: "POST",
      url: url,
      data: formData
    }).then(data => {

      const { code } = data.data

      if (code === 200) {
        Swal.fire({
          title: 'Registro Satisfactorio',
          icon: 'success',
          showConfirmButton: true,
          timer: 2000
        }).then(() => {
          window.location = '/users'
        })
        form.reset()
      } else {
        Swal.fire({
          title: 'Error al registrar',
          icon: 'warning',
          showConfirmButton: true,
          timer: 2000
        })
      }
    })
  } else {
    Swal.fire({
      title: 'Por favor rellene el formulario correctamente',
      icon: 'error',
      showConfirmButton: true,
      timer: 3000
    })
  }
})

