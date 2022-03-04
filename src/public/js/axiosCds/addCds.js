const form = document.getElementById('cdsForm')

form.addEventListener('submit', (e) => {

    e.preventDefault();
    const formData = $(form).serialize();
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
  })
  
