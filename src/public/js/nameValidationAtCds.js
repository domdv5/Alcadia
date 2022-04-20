const getValueCds = () => {
    const valor = document.getElementById('espacio').value
    const valor1 = document.getElementById('nombre').value.toUpperCase()
    const concat = valor.concat(' ' + valor1)

    const url = window.origin + '/getConcatenar'

    axios({
        method: "POST",
        url: url,
        data: {
            datos: concat
        }
    }).then(data => {
        const { code } = data.data

        if (code === 200) {
            swal.fire({
                title: 'El nombre ya ha sido tomado, por favor digite otro',
                icon: 'error',
                showConfirmButton: false,
                timer: 3000
            })
            document.getElementById('nombre').className = ''
        }
    })
}

const takeValueCds = () => {
    const valor = document.getElementById('espacio').value
    const valor1 = document.getElementById('nombre').value.toUpperCase()
    const concat = valor.concat(' ' + valor1)

    const url = window.origin + '/getConcatenar'

    axios({
        method: "POST",
        url: url,
        data: {
            datos: concat
        }
    }).then(data => {
        const { code } = data.data

        
        if (code === 200) {
            swal.fire({
                title: 'El nombre ya ha sido tomado, por favor digite otro',
                icon: 'error',
                showConfirmButton: false,
                timer: 3000
            })
            document.getElementById('nombre').className = ''
        }
    })
}
