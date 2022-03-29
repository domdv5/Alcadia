let id = 0
const boton = document.querySelectorAll('.btnEdit')

boton.forEach(botones => {
    botones.addEventListener("click", (e) => {
        const fila = e.target.parentNode.parentNode
        id = fila.firstElementChild.innerHTML
        console.log(id);
    })
})

const forms = document.querySelectorAll('.usersForm')

forms.forEach(form => {
    form.addEventListener('submit', (e) => {
        e.preventDefault()
        const formData = $(form).serialize()
        const url = location.origin + `/edit.users/${id}`
        console.log(url);
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
                 
            }
        })
             setTimeout(()=>{
                location.reload()
            }, 600) 
    })
})
