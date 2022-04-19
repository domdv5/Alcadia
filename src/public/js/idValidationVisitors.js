const idValidation = () => {

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
        if(code === 200){
            document.getElementById('validationServer01').className = 'form-control is-invalid'
            document.getElementById('numeroDocumento').className = 'invalid-feedback'
            document.getElementById('numeroDocumento').innerHTML = 'El documento ya se encuentra registrado'
        } 
    })
}