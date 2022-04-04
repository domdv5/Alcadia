

const getDocument = () => {
    let value = document.getElementById('item').value
    const item2 = document.getElementById('item2')

    const currentTime = new Date();

    let yearBirth = parseInt(value.slice(0, 4))
    let monthBirth = parseInt(value.slice(5, 7))
    let dayBirth = parseInt(value.slice(8, 10))


    const currentMonth = currentTime.getMonth() + 1
    const currentYear = currentTime.getFullYear()
    const currentDay = currentTime.getDate()
    let nextAge = currentYear - yearBirth
    let currentAge = nextAge - 1

    



    if (currentDay >= dayBirth && currentMonth >= monthBirth) {
       item2.setAttribute('value', nextAge)
        evento = document.createEvent('event')
        evento.initEvent('change', true, false)
        item2.dispatchEvent(evento)

    } else {
         item2.setAttribute('value', currentAge)
        evento = document.createEvent('event')
        evento.initEvent('change', true, false)
        item2.dispatchEvent(evento)
    }

}



