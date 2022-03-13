
const getInfoVisitors = () => {
    const url = location.origin + '/getInfoVisitors'
    axios({
        method: "GET",
        url: url,
    }).then(data => {
        const { code } = data.data
        if (code === 400) {
            Swal.fire({
                title: 'Debes registrar al menos una actividad y un visitante para darle su respectivo ingreso.',
                icon: 'warning',
                showConfirmButton: false,
                timer: 3000
            }).then(() => {
                window.location = '/visitors'
            })
        }
    })
}

