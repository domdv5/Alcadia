const getSelectValue = () => {
    const value = document.getElementById("tipo").options[document.getElementById('tipo').selectedIndex].innerHTML

    
    if (value.startsWith('ADMINISTRADOR')) {
        document.getElementById("item1").setAttribute('value', '1')
        document.getElementById("item1").innerHTML = 'Administrador'
    } else{
        document.getElementById("item1").setAttribute('value', '0')
        document.getElementById("item1").innerHTML = 'General'
    }

}