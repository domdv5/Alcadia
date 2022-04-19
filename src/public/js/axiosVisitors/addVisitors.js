const form = document.getElementById(`myForm`)

form.addEventListener("submit", (e) => {

  let contador = 0
  let contadorValor = 0

  e.preventDefault()

  document.querySelectorAll("input").forEach((input) => {
    const className = input.className
    if (className === `form-control is-valid`) {
      contador++
    }
  })


  document.querySelectorAll("select").forEach((select) => {
    if (select.value !== '') {
      contadorValor++
    }
  })

  const value = document.getElementById('fecha').value
  if(value !== ''){
    contador++
  }


  if (contador === 8 && contadorValor === 6) {

    const formData = Object.fromEntries(new FormData(form))
    const url = location.origin + '/addVisitors'

    axios({
      method: "POST",
      url: url,
      data: formData
    }).then(data => {

      const { code } = data.data

      console.log(code);

      if (code === 200) {
        Swal.fire({
          title: 'Registro Satisfactorio',
          icon: 'success',
          showConfirmButton: true,
          timer: 2000
        })

        form.reset()
        document.querySelectorAll("input").forEach((inputs)=>{
          inputs.removeAttribute('class')
        })
        setTimeout(() => {
          window.location = '/ingresoVisitantes'
        }, 2000)
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
