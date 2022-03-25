

const getValue = () => {
    const value = document.getElementById("SelectVisitors").value
    console.log(value);

    if (value !== "No Aplica") {
        document.getElementById('bs-select-1-7').setAttribute('hidden', true)
    } if (value === '') {
        document.getElementById('bs-select-1-7').removeAttribute('hidden')
    } if (value === 'No Aplica') {
         document.getElementById('bs-select-1-0').setAttribute('hidden', true)
         document.getElementById('bs-select-1-1').setAttribute('hidden', true)
         document.getElementById('bs-select-1-2').setAttribute('hidden', true)
         document.getElementById('bs-select-1-3').setAttribute('hidden', true)
         document.getElementById('bs-select-1-4').setAttribute('hidden', true)
         document.getElementById('bs-select-1-5').setAttribute('hidden', true)
         document.getElementById('bs-select-1-6').setAttribute('hidden', true)
        
    } else {
        document.getElementById('bs-select-1-0').removeAttribute('hidden')
        document.getElementById('bs-select-1-1').removeAttribute('hidden')
        document.getElementById('bs-select-1-2').removeAttribute('hidden')
        document.getElementById('bs-select-1-3').removeAttribute('hidden')
        document.getElementById('bs-select-1-4').removeAttribute('hidden')
        document.getElementById('bs-select-1-5').removeAttribute('hidden')
        document.getElementById('bs-select-1-6').removeAttribute('hidden')
    }

}