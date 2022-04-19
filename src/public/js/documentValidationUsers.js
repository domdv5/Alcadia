
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
            document.getElementById('validationServer01').className ='form-control is-invalid'
            document.getElementById('divCedula').className ='invalid-feedback'
            document.getElementById('divCedula').innerHTML = 'La cedula ya es un usuario activo, por favor digite otra.'
        } 
        
    })

}