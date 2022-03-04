let identificador = 0

const botton = document.querySelectorAll('.btnDelete')
botton.forEach(botones => {
    botones.addEventListener("click", (e) => {
        const fila = e.target.parentNode.parentNode
        identificador = fila.firstElementChild.innerHTML
    })
})

const btnAceptar = document.querySelectorAll('.btnAceptar')
btnAceptar.forEach(buttons => {
    buttons.addEventListener('click', (e) => {
        e.preventDefault()
        const url = location.origin + `/delete.cds/${identificador}`
        axios({
            method: "DELETE",
            url: url,
        }).then(data => {
            const { code } = data.data
            if (code === 200) {
                Swal.fire({
                    title: "REGISTRO ELIMINADO",
                    icon: "success",
                    showConfirmButton: false,
                    timer: 2500,
                })
            }
        })
            setTimeout(()=>{
             location.reload()
         } ,600) 
    })
})