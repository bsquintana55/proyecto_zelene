/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validar(){
    let usuario = document.getElementById('usuario').value;
    let fecha = document.getElementById('fecha').value;
    let nombre = document.getElementById('nombre').value;
    let edad = document.getElementById('edad').value;
    let raza = document.getElementById('raza').value;
    let tipo = document.getElementById('tipo').value;
    let estado = document.getElementById('estado').value;
   
    
    if (usuario === 5 || fecha === "" || nombre === "" || edad === "" || raza === "" || tipo === 2 || estado === 3) {
        Swal.fire({icon: 'error',
                  title: 'Todos los campos son obligatorios'});
        return false;
    }
    
    else if(nombre.length<4){
        Swal.fire({icon: 'error',
                  title: 'El nombre esta muy corto',
                  text: 'Por favor ingresa un nombre valido'});
        return false;
    }
    
    else if(nombre.length>11){
         Swal.fire({icon: 'error',
                  title: 'El nombre esta muy largo',
                  text: 'Por favor ingresa un nombre valido'});
         return false;
    }
    
    else if(edad.length>2){
        Swal.fire({icon: 'warning',
                  title: 'Solo puedes ingresar maximo 2 digitos',
                  text: 'Por favor ingresa una edad valida'});
         return false;
    }
    
    else if(isNaN(edad)){
        alert("La edad ingresada no es un número")
        return false;
    }
    
     else if(edad.length>2){
        Swal.fire({icon: 'warning',
                  title: 'Solo puedes ingresar maximo 2 digitos',
                  text: 'Por favor ingresa una edad valida'});
         return false;
    }
    
    else if(raza.length>15){
        Swal.fire({icon: 'error',
                  title: 'El campo raza esta muy largo ',
                  text: 'Por favor ingresa una raza valida'});
         return false;
    }
    
    
    
}
 let registrar = document.getElementById('registrar')
         registrar.addEventListener('click', function (){
        Swal.fire({icon: 'success',
                  title: 'La mascota se registro ',
                  timer: 5000});
        
    });





















function validar(){
    let nombre = document.getElementById('nombre').value;
    let edad = document.getElementById('edad').value;
    let raza = document.getElementById('raza').value;
    let tipo = document.getElementById('tipo').value;
    let estado = document.getElementById('estado').value;
   
    
    if ( nombre === "" || edad === "" || raza === "" || tipo === "" || estado === "") {
        Swal.fire({icon: 'error',
                  title: 'Todos los campos son obligatorios'});
        return false;
    }
    
    else if(nombre.length<4){
        Swal.fire({icon: 'error',
                  title: 'El nombre esta muy corto',
                  text: 'Por favor ingresa un nombre valido'});
        return false;
    }
    
    else if(nombre.length>11){
         Swal.fire({icon: 'error',
                  title: 'El nombre esta muy largo',
                  text: 'Por favor ingresa un nombre valido'});
         return false;
    }
    
    else if(edad.length>2){
        Swal.fire({icon: 'warning',
                  title: 'Solo puedes ingresar maximo 2 digitos',
                  text: 'Por favor ingresa una edad valida'});
         return false;
    }
    
    else if(isNaN(edad)){
        alert("La edad ingresada no es un número")
        return false;
    }
    
     else if(edad.length>2){
        Swal.fire({icon: 'warning',
                  title: 'Solo puedes ingresar maximo 2 digitos',
                  text: 'Por favor ingresa una edad valida'});
         return false;
    }
    
    else if(raza.length>15){
        Swal.fire({icon: 'error',
                  title: 'El campo raza esta muy largo ',
                  text: 'Por favor ingresa una raza valida'});
         return false;
    }
    
    
    
}
 let actualizar = document.getElementById('actualizar');
         actualizar.addEventListener('click', function (){
        Swal.fire({icon: 'success',
                  title: 'La mascota se actualizo ',
                  timer: 5000});
        
    });





let correo = document.getElementById('correo').value;
function validar(){
    let correo = document.getElementById('correo').value;
    let password = document.getElementById('password').value;
   
   expresion =/^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
   expresionC = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
    
    if (correo === "" || password === "") {
        Swal.fire({icon: 'error',
                  title: 'Todos los campos son obligatorios'});
        return false;
    }
    
    else if (!expresion.test(correo)){
   Swal.fire({icon: 'error',
                  title: 'La dirección del correo no es valida ',
                  text: 'Por favor ingresa un correo valido'});
        return false;
 
}

 else if (!expresionC.test(password)){
   Swal.fire({icon: 'error',
                  title: 'Contraseña invalida',
                  text: 'La contraseña debe tener de 6 a 16 caracteres, minimo un número y un caracter especial'});
        return false;
 
}


}
let registrar = document.getElementById('registrar')
         registrar.addEventListener('click', function (){
        Swal.fire({icon: 'success',
                  title: 'La novedad se registro ',
                  timer: 5000});
        
        
    });