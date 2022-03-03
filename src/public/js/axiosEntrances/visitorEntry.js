
const form = document.getElementById('myForm')

form.addEventListener("submit", (e) => {
    e.preventDefault()
    const formData = $(form).serialize();
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
})