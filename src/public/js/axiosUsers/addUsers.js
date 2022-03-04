const form = document.getElementById('usersForm')

form.addEventListener('submit', (e) => {

    e.preventDefault();
    const formData = $(form).serialize();
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
        document.getElementById('validationServer01').removeAttribute('class')
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
  