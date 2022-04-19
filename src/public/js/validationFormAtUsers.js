import { expresiones } from "./validationForrmAtVisitors.js";
import { validarCampo } from "./validationForrmAtVisitors.js";

const inputs = document.querySelectorAll(`input`)

const validarFormulario = (e) => {
    switch (e.target.name) {
        case 'cedula':
            validarCampo(expresiones.cedula, e.target, 'validationServer01')
            document.getElementById(`divCedula`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divCedula`).innerHTML = 'la cedula debe tener minimo 5 digitos y maximo 10'
            break;

        case 'nombre_coordinador':
            validarCampo(expresiones.string, e.target, 'nombre')
            document.getElementById(`divNombre`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divNombre`).innerHTML = 'Solo se permite el ingreso de letras'
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