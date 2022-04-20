
const disabledInput = () => {
    const valor = document.getElementById('espacio').value

    if (valor === 'ADMINISTRADOR') {
        document.querySelectorAll('.inputs').forEach(inputs => {
            inputs.setAttribute('hidden', true)
            inputs.removeAttribute('required');
        })

        document.querySelectorAll('.invalid-feedback').forEach(inputs => {
            inputs.setAttribute('hidden', true)
            inputs.removeAttribute('required');
        })


        let inputDireccion = document.getElementById('direccion')
        inputDireccion.setAttribute('hidden', true)

        let inputHorario = document.getElementById('horario')
        inputHorario.setAttribute('hidden', true)


    } else {
        document.querySelectorAll('.inputs').forEach(inputs => {
            inputs.removeAttribute('hidden')
        })
        document.querySelectorAll('.invalid-feedback').forEach(inputs => {
            inputs.removeAttribute('hidden');
            inputs.removeAttribute('required');
        })

        let inputDireccion = document.getElementById('direccion')
        inputDireccion.removeAttribute('hidden')

        let inputHorario = document.getElementById('horario')
        inputHorario.removeAttribute('hidden')

    }
}

