
const showInput = () => {
    let select = document.getElementById("myselect").value
    if (select === 'Otro') {
        const container = document.getElementById("contenedor")
        const option = document.createElement('input')
        option.setAttribute('id', 'prueba')
        container.appendChild(option)
    } else {
        document.getElementById('prueba').setAttribute('hidden', true)
    }

    document.getElementById('prueba').setAttribute('onchange', 'getValue()')

}


const getValue = ()=>{
    const value = document.getElementById('prueba').value
    document.getElementById('option').setAttribute('value', value)
}