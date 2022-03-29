const valor= localStorage.getItem('value')

document.getElementById('validationServer01').setAttribute('value', valor)

if(valor !== null){
    localStorage.clear()
}else{
    document.getElementById('validationServer01').removeAttribute('value')
}

    