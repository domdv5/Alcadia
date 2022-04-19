
const form = document.getElementById('activitieForm')

form.addEventListener("submit", (e) => {
    e.preventDefault()
    
    let contador = 0
    let contador2 = 0
    let contador3 = 0


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


    document.querySelectorAll(".inputs").forEach((select) => {
        if (select.value !== '') {
            contador3++
        }
    })

    if (contador === 11 && contador2 === 3 && contador3 === 4) {

        const formData = Object.fromEntries(new FormData(form))
        const url = location.origin + '/addActivities'

        axios({
            method: 'POST',
            url: url,
            data: formData
        }).then(data => {
            const { code } = data.data

            if (code === 200) {
                Swal.fire({
                    title: 'Registro Guardado',
                    icon: 'success',
                    showConfirmButton: true,
                    timer: 2000
                })
                form.reset()
                document.querySelectorAll("input").forEach((inputs) => {
                    inputs.removeAttribute('class')
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



