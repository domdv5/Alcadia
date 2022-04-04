const getAge = () => {
    const value = document.getElementById('item2').value
    const valor = document.getElementById('validationServer01').value


    const url = location.origin + '/updateAge'

    axios({
        method: "PUT",
        url: url,
        data: {
            value,
            valor,
        }
    })
}
