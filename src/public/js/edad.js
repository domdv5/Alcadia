function ageGenerator() {
    let date = document.getElementById('fecha').value
    

    


    let yearBirth = parseInt(date.slice(0, 4))
    let monthBirth = parseInt(date.slice(5, 7))
    let dayBirth = parseInt(date.slice(8, 10))



    let currentTime = new Date();

    let year = currentTime.getFullYear()
    let moth = currentTime.getMonth() + 1
    let day = currentTime.getDate()
    let nextAge = year - yearBirth
    let currentAge = year - yearBirth - 1


    if (dayBirth - day >= 0 || monthBirth - moth > 0) {
        document.getElementById('age').setAttribute('value', nextAge)
    } else {
         document.getElementById('age').setAttribute('value', currentAge)
    }

}
