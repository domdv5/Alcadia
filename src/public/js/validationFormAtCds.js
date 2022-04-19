import { expresiones } from "./validationForrmAtVisitors.js";
import { validarCampo } from "./validationForrmAtVisitors.js";

const inputs = document.querySelectorAll(`input`)

const validarFormulario = (e) => {
    switch (e.target.name) {
        case 'nombre':
            validarCampo(expresiones.upperCase, e.target, 'nombre')
            document.getElementById(`divNombre`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divNombre`).innerHTML = 'El nombre debe ir en mayusculas'
            break;

        case 'direccion':
            validarCampo(expresiones.direccion, e.target, 'direccion')
            document.getElementById(`divDireccion`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divDireccion`).innerHTML = 'Solo esta permitido el caracter especial (#)'
            break;

        case 'horario':
            validarCampo(expresiones.string, e.target, 'horario')
            document.getElementById(`divHorario`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divHorario`).innerHTML = 'Solo esta permitido el ingreso de letras'
            break;

        case 'correo':
            validarCampo(expresiones.email, e.target, 'correo')
            document.getElementById(`divCorreo`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divCorreo`).innerHTML = 'Ingrese un correo valido'
            break;

        case 'telefono':
            validarCampo(expresiones.telephone, e.target, 'telefono')
            document.getElementById(`divTelefono`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divTelefono`).innerHTML = 'El telefono debe tener minimo 7 digitos o maximo 10'
            break;
    }
}

inputs.forEach((input) => {
    input.addEventListener("keyup", validarFormulario)
})