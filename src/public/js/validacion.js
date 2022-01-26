



const validacion = () => {

    let value = document.getElementById('identification').value
    const url = window.origin + '/idValidation'

    axios({
        method: 'POST',
        url: url,
        data: {
            numero_documento: value
        }
    }).then(data => {
        const { code } = data.data

        console.log(code);

        if(code === 200){
            document.getElementById('identification').setAttribute('class', 'form-control is-valid')
            document.getElementById('btnLogin').removeAttribute('disabled')
            
        } else {
            document.getElementById('identification').setAttribute('class', 'form-control is-invalid')
            document.getElementById('btnLogin').setAttribute('disabled', true)
        }
    })

}



