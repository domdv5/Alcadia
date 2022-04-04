
const getData = () => {
    const url = location.origin + '/getInfo'

    axios({
        method: "GET",
        url: url,
    }).then(data => {
        const { code } = data.data

        if (code === 400) {
            Swal.fire({
                title: 'Por favor cree su perfil de administrador para posteriormente asignarle un usuario',
                icon: 'warning',
                showConfirmButton: false,
                timer: 3000
            }).then(() => {
                window.location = '/registerCds'
            })
        }
    })
}





