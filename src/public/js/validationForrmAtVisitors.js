const inputs = document.querySelectorAll(`input`)


export const expresiones = {
    string: /^[A-Z a-z\u00C0-\u017F]{1,150}$/,
    number: /^[0-9]{1,50}$/,
    cedula: /^[0-9]{7,10}$/,
    email: /^([\da-z_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/,
    telephone: /^[0-9]{7,10}$/,
    direccion: /^[A-Z a-z-0-9-#]{1,150}$/,
    fecha: /^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$/,
    upperCase: /^[A-Z ]{1,150}$/,
}

const validarFormulario = (e) => {
    switch (e.target.name) {
        case 'numero_documento':
            validarCampo(expresiones.cedula, e.target, 'validationServer01')
            document.getElementById(`numeroDocumento`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`numeroDocumento`).innerHTML = 'la documento debe tener minimo 7 digitos y maximo 10'
            break;

        case 'nombre_completo':
            validarCampo(expresiones.string, e.target, 'nombre_completo')
            document.getElementById(`nombreCompleto`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`nombreCompleto`).innerHTML = 'Solo se permite el ingreso de letras'
            break;

        case 'secretaria_entidad':
            validarCampo(expresiones.string, e.target, 'secretaria_entidad')
            document.getElementById(`secretariaEntidad`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`secretariaEntidad`).innerHTML = 'Solo se permite el ingreso de letras'
            break;

        case 'ocupacion':
            validarCampo(expresiones.string, e.target, 'ocupacion')
            document.getElementById(`ocupacionn`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`ocupacionn`).innerHTML = 'Solo se permite el ingreso de letras'
            break;


        case 'correo_electronico':
            validarCampo(expresiones.email, e.target, 'correo')
            document.getElementById(`email`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`email`).innerHTML = 'Ingrese un correo valido'
            break;

        case 'organizacion':
            validarCampo(expresiones.string, e.target, 'organization')
            document.getElementById(`organizacion`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`organizacion`).innerHTML = 'Solo se permite el ingreso de letras'
            break;

        case 'telefono_celular':
            validarCampo(expresiones.telephone, e.target, 'telCelular')
            document.getElementById(`telefonoCelular`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`telefonoCelular`).innerHTML = 'El telefono debe tener minimo 7 digitos o maximo 10'
            break;
    }
}

export const validarCampo = (expresion, input, campo, divId) => {
    if (expresion.test(input.value)) {
        document.getElementById(`${campo}`).className = 'form-control is-valid'
    } else {
        document.getElementById(`${campo}`).className= `form-control is-invalid`
    }
}


inputs.forEach((input) => {
    input.addEventListener("keyup", validarFormulario)
})