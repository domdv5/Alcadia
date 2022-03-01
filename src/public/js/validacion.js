



const validacion = () => {

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
            document.getElementById('validationServer01').setAttribute('class', 'form-control is-valid')
            document.getElementById('btnLogin').removeAttribute('disabled')
            
        } else {
            document.getElementById('validationServer01').setAttribute('class', 'form-control is-invalid')
            document.getElementById('btnLogin').setAttribute('disabled', true)
        }
    })
}

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
        if(code === 400){
            document.getElementById('validationServer01').setAttribute('class', 'form-control is-valid')
            document.getElementById('login').removeAttribute('disabled')
            
        } else {
            document.getElementById('validationServer01').setAttribute('class', 'form-control is-invalid')
            document.getElementById('login').setAttribute('disabled', true)
        }
    })
}


