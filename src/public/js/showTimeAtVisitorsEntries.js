 const getTime = () => {

    const time = new Date()
    const fullHour = time.toLocaleTimeString()

    return fullHour

}

const hora = document.getElementById('hour')

setInterval(() => {
    hora.setAttribute('value', getTime())
  }, 1000)





