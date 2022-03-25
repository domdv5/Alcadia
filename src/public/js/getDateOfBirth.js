
const showDocument = () => {
    const value = document.getElementById('validationServer01').value
    const url = location.origin + '/getDateOFbirth'

    axios({
        method: "POST",
        url: url,
        data: {
            cedula: value
        }
    }).then(data => {
        const { fecha } = data.data

        document.getElementById('item').setAttribute('value', fecha)
        $('#item').change()
    })
}