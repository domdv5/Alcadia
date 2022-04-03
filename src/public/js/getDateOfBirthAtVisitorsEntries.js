
const showDocument = () => {
    const value = document.getElementById('validationServer01').value
    const item = document.getElementById('item')
    const url = location.origin + '/getDateOFbirth'

    axios({
        method: "POST",
        url: url,
        data: {
            cedula: value
        }
    }).then(data => {
        const { fecha } = data.data

        item.setAttribute('value', fecha)
        evento = document.createEvent('event')
        evento.initEvent('change', true, false)
        item.dispatchEvent(evento)
    })
}