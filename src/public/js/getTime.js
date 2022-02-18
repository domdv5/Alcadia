 const getTime = () => {


    const time = new Date()

    const hours = time.getHours()
    const minute = time.getMinutes()
    const seconds = time.getSeconds()

    const fullHour = `${hours}:${minute}:${seconds}`


    return fullHour

}

const hora = document.getElementById('hour')

setInterval(() => {
    hora.setAttribute('value', getTime())
  }, 1000)





