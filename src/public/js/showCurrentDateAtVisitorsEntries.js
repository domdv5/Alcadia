const getDate = ()=>{
    const currentTime = new Date();
      let fullDate = currentTime.toLocaleDateString("en-AU", {
          year: "numeric",
          month: "2-digit",
          day: "2-digit",
      }) 

    return fullDate
}

const currentDate = getDate()

const fecha = document.getElementById('fecha').setAttribute('value', currentDate)

