

const getInputs = () => {

    const url = window.origin + '/inputs'

    axios({
        method: 'get',
        url: url
    }).then(data => {
        const { code } = data.data
        if (code === 200) {

            const inputs = document.querySelectorAll("input")
            const selects = document.querySelectorAll("select")

            inputs.forEach(input => {
                input.setAttribute('disabled', true)
            })

            selects.forEach(select=>{
                select.setAttribute('disabled', true)
            })
        }
    })
}