
let id = 0

const boton = document.querySelectorAll('.btnEdit')
boton.forEach(botones => {
    botones.addEventListener("click", (e) => {
        const fila = e.target.parentNode.parentNode
        id = fila.firstElementChild.innerHTML
    })
})

const forms = document.querySelectorAll('.activitiesForm')
forms.forEach(form=>{
    form.addEventListener("submit", (e)=>{
        e.preventDefault()
        const formData = Object.fromEntries(new FormData(form))
        const url = location.origin + `/edit.activities/${id}`

        axios({
            method: "PUT",
            url: url,
            data: formData
        }).then(data => {
            const { code } = data.data
            if (code === 200) {
                Swal.fire({
                    title: "ACTUALIZACIÓN EXITOSA",
                    icon: "success",
                    showConfirmButton: false,
                    timer: 2500,
                })
                setTimeout(()=>{
                    location.reload()
                }, 600) 
            }
        })
    })
})