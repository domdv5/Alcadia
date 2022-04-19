
const form = document.getElementById('myForm')

form.addEventListener("submit", (e) => {

    let contador = 0
    e.preventDefault()

    document.querySelectorAll('select').forEach((select) => {
        if (select.value !== '')
            contador++
    })


    if (contador === 2) {
        const formData = Object.fromEntries(new FormData(form))
        const url = location.origin + '/visitorsEntry'

        axios({
            method: 'post',
            url: url,
            data: formData
        }).then(data => {
            const { code } = data.data
            if (code === 200) {
                Swal.fire({
                    title: 'Ingreso Exitoso',
                    icon: 'success',
                    showConfirmButton: true,
                    timer: 2000
                })
                form.reset()
                document.getElementById('validationServer01').removeAttribute('class')
            }
        })
    } else{
        Swal.fire({
            title: 'Por favor rellene el formulario correctamente',
            icon: 'error',
            showConfirmButton: true,
            timer: 3000
          })
    }
})