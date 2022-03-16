
const disabledInput = () => {
    const valor = document.getElementById('espacio').value

    if (valor === 'ADMINISTRADOR') {
        document.querySelectorAll('.inputs').forEach(inputs => {
            inputs.setAttribute('hidden', true)
        })
    } else {
        document.querySelectorAll('.inputs').forEach(inputs => {
            inputs.removeAttribute('hidden')
        })
    }
}

