

let id = 0

const boton = document.querySelectorAll('.btnDelete')
boton.forEach(botones => {
    botones.addEventListener("click", (e) => {
        const fila = e.target.parentNode.parentNode
        id = fila.firstElementChild.innerHTML
    })
})

const btnAceptar = document.querySelectorAll(".btnAceptar")
btnAceptar.forEach(buttons => {
    buttons.addEventListener("click", (e) => {
        e.preventDefault()
        const url = location.origin + `/delete.visitante/${id}`

        axios({
            method: "GET",
            url: url
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
        },600)
    })
})


