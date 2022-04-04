
const form = document.getElementById('activitieForm')

form.addEventListener("submit", (e) => {
    e.preventDefault()

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
        }
    })
})



