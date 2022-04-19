const getValuePass = () => {
    return document.getElementById('pass').value
}


const validPass = () => {

    const valor = getValuePass()
    const value1 = document.getElementById('pass1').value


    if (valor !== value1 || (valor ==='' && value1 ==='')) {
        document.getElementById('pass1').setAttribute('class', "form-control is-invalid")
        document.getElementById('divPass').setAttribute('class', 'invalid-feedback')
        document.getElementById('divPass').innerHTML = 'Las contrasenas no coinciden'
        
    } else {
        document.getElementById('pass1').setAttribute('class', "form-control is-valid")
        document.getElementById('divPass').setAttribute('class', 'valid-feedback')
        document.getElementById('divPass').innerHTML = 'Las contrasenas coinciden'
    }
}