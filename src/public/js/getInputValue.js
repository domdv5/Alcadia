const getValue = () =>{
    const value = document.getElementById('nombre').value

    if(value.includes('CDS') || value.includes('TELECENTRO')){
        Swal.fire({
            title: 'No esta permitido anteponer CDS o TELECENTRO',
            icon: 'warning',
            showConfirmButton: true,
            timer: 3000
          })
          document.getElementById('btnCds').setAttribute('disabled', true)
    }else{
        document.getElementById('btnCds').removeAttribute('disabled')
    }
}