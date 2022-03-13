const tagDisabled = () => {
    const url = location.origin + '/getInfo'
    axios({
        method: "GET",
        url: url,
    }).then(data => {
        const { code } = data.data

        if (code === 400) {
            const botones = document.querySelectorAll('.navItem')
            botones.forEach(bottons => {
                bottons.addEventListener('click', (e) => {
                    e.preventDefault()
                })
            })
        }
    })
}
