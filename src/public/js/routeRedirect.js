const redirect = () => {
    const className = document.getElementById('validationServer01').className

    if (className === 'form-control is-valid') {
        setTimeout(() => {
            window.location = '/visitors'
        },2000)

    }
}

