const getDate = ()=>{
    let currentTime = new Date();

    let year = currentTime.getFullYear()
    let moth = currentTime.getMonth() + 1
    let day = currentTime.getDate()
    let fullDate = `${year}-${moth}-${day}`

    return fullDate
}

const currentDate = getDate()

const fecha = document.getElementById('fecha').setAttribute('value', currentDate)

