
const validation = () => {

    let value = document.getElementById('validationServer01').value
    const url = window.origin + '/idValidation'

    axios({
        method: 'POST',
        url: url,
        data: {
            numero_documento: value
        }
    }).then(data => {
        const { code } = data.data


        if (code === 200) {
            document.getElementById('validationServer01').setAttribute('class', 'form-control is-valid')
            document.getElementById('btnLogin').removeAttribute('disabled')
        } else {
            swal.fire({
                title: 'El visitante no se encuentra registrado, por favor registrelo.',
                icon: 'warning',
                showConfirmButton: false,
                timer: 3000
            }).then(() => {
                window.location = '/visitors'
            })
        }
    })
}






