const getValue = () => {
    const value = document.getElementById('nombre').value

    if (value.includes('CDS') || value.includes('TELECENTRO')) {
        Swal.fire({
            title: 'No esta permitido anteponer CDS o TELECENTRO',
            icon: 'warning',
            showConfirmButton: true,
            timer: 3000
        })
        document.getElementById('nombre').setAttribute('class', 'form-control is-invalid')
        document.getElementById('divNombre').className = 'invalid-feedback'
        document.getElementById('divNombre').innerHTML = 'No esta permitido anteponer CDS o TELECENTRO'
    }
}