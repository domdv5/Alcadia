
const documentValidation = () => {
    let value = document.getElementById('validationServer01').value
    let url = location.origin + '/documentValidation'

    axios({
        method: "POST",
        url: url,
        data: {
            cedula: value
        }
    }).then(data => {
        const { code } = data.data
        if(code === 200){
            document.getElementById('validationServer01').setAttribute('class','form-control is-invalid')
            document.getElementById('btnLogin').setAttribute('disabled', true)
        } else{
            document.getElementById('validationServer01').setAttribute('class','form-control is-valid')
            document.getElementById('btnLogin').removeAttribute('disabled')
        }
    })

}