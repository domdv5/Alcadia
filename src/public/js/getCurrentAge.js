

const getDocument = () => {
    let value = document.getElementById('item').value
    const valor = document.getElementById('validationServer01').value


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
        document.getElementById('item2').setAttribute('value', nextAge)
        $('#item2').change()

    } else {
        document.getElementById('item2').setAttribute('value', currentAge)
        $('#item2').change()
    }

    

}



