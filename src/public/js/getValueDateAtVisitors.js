const takeValue = () => {
    const value = document.getElementById("fecha").value


    const yearBirth = parseInt(value.slice(0, 4))

    const currentTime = new Date();
    const currentYear = currentTime.getFullYear()

    if (yearBirth > currentYear || yearBirth === currentYear) {
          swal.fire({
            title: 'No se puede seleccionar una fecha mayor o igual a la actual ',
            icon: 'warning',
            showConfirmButton: false,
            timer: 3000
          })
          document.getElementById('btnVisitors').setAttribute('disabled', true)
    } else{
        document.getElementById('btnVisitors').removeAttribute('disabled')
    }

}