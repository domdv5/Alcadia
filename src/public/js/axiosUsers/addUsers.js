const form = document.getElementById('usersForm')

form.addEventListener('submit', (e) => {
  e.preventDefault();

  let contador = 0
  let contador2 = 0

  document.querySelectorAll("input").forEach((input) => {
    const className = input.className
    if (className === `form-control is-valid`) {
      contador++
    }
  })

  document.querySelectorAll("select").forEach((select) => {
    if (select.value !== '') {
      contador2++
    }
  })


  if (contador === 5 && contador2 === 2) {
    const formData = Object.fromEntries(new FormData(form))
    console.log(formData);
    const url = location.origin + '/addUsers'

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
        })
        form.reset()
        document.querySelectorAll("input").forEach((inputs) => {
          inputs.removeAttribute('class')
        })

        document.getElementById('correo').setAttribute('class', 'select-css1')
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
