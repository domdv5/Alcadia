import { expresiones } from "./validationForrmAtVisitors.js";
import { validarCampo } from "./validationForrmAtVisitors.js";

const inputs = document.querySelectorAll(`input`)

const validarFormulario = (e) => {
    switch (e.target.name) {
        case 'fecha':
            validarCampo(expresiones.fecha, e.target, 'fecha')
            document.getElementById(`divFecha`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divFecha`).innerHTML = 'fecha con el formato erroneo dd/mm/yy'
            break;
    }
}


inputs.forEach((input) => {
    input.addEventListener("keyup", validarFormulario)
})