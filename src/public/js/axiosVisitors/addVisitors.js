const form = document.getElementById('myForm')

form.addEventListener('submit', (e) => {

  e.preventDefault();
  const formData = Object.fromEntries(new FormData(form))
  const url = location.origin + '/addVisitors'

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
      document.getElementById('validationServer01').removeAttribute('class')
      document.getElementById('age').removeAttribute('value')
      document.querySelector("#myForm > div:nth-child(9) > div > button > div > div > div").setAttribute('title', "Nothing selected")

      setTimeout(() => {
        window.location = '/ingresoVisitantes'
      }, 2000)


    } else {
      Swal.fire({
        title: 'Error al registrar',
        icon: 'warning',
        showConfirmButton: true,
        timer: 2000
      })
    }
  })
})
