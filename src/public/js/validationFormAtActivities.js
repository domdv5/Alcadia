import { expresiones } from "./validationForrmAtVisitors.js";
import { validarCampo } from "./validationForrmAtVisitors.js";

const inputs = document.querySelectorAll(`input`)

const validarFormulario = (e) => {
    switch (e.target.name) {
        case 'nombre':
            validarCampo(expresiones.string, e.target, 'actividad')
            document.getElementById(`nombreActividad`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`nombreActividad`).innerHTML = 'Solo se permite el ingreso de letras'
            break;

        case 'secretaria':
            validarCampo(expresiones.string, e.target, 'secretariaEntidad')
            document.getElementById(`secretaria`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`secretaria`).innerHTML = 'Solo se permite el ingreso de letras'
            break;

        case 'facilitador':
            validarCampo(expresiones.string, e.target, 'facilitador')
            document.getElementById(`divFacilitador`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divFacilitador`).innerHTML = 'Solo se permite el ingreso de letras'
            break;


        case 'barrio_vereda':
            validarCampo(expresiones.string, e.target, 'barrio')
            document.getElementById(`divBarrio`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divBarrio`).innerHTML = 'Solo se permite el ingreso de letras'
            break;

        case 'direccion':
            validarCampo(expresiones.direccion, e.target, 'direccion')
            document.getElementById(`divDireccion`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divDireccion`).innerHTML = 'Solo esta permitido el caracter especial (#)'
            break;

        case 'nombre_proyecto_inversion':
            validarCampo(expresiones.string, e.target, 'proyecto')
            document.getElementById(`divProyecto`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divProyecto`).innerHTML = 'Solo se permite el ingreso de letras'
            break;

        case 'codigo_proyecto_inversion':
            validarCampo(expresiones.number, e.target, 'codigoProyecto')
            document.getElementById(`divCodigoProyecto`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divCodigoProyecto`).innerHTML = 'Solo se permite el ingreso de numeros'
            break;

        case 'nombres_plan_desarrollo':
            validarCampo(expresiones.string, e.target, 'nombreIndicadores')
            document.getElementById(`divNombreIndicadores`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divNombreIndicadores`).innerHTML = 'Solo se permite el ingreso de letras'
            break;


        case 'codigo_indicadores_pdm_pdi':
            validarCampo(expresiones.number, e.target, 'codigoIndicadores')
            document.getElementById(`divCodigoIndicadores`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divCodigoIndicadores`).innerHTML = 'Solo se permite el ingreso de numeros'
            break;


        case 'linea':
            validarCampo(expresiones.string, e.target, 'linea')
            document.getElementById(`divLinea`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divLinea`).innerHTML = 'Solo se permite el ingreso de letras'
            break;

        case 'componente':
            validarCampo(expresiones.string, e.target, 'componente')
            document.getElementById(`divComponente`).setAttribute('class', 'invalid-feedback')
            document.getElementById(`divComponente`).innerHTML = 'Solo se permite el ingreso de letras'
            break;
    }
}

inputs.forEach((input) => {
    input.addEventListener("keyup", validarFormulario)
})