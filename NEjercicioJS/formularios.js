
let form = document.querySelector("form")
// puedo evitar agarrarlo let input = document.querySelector("input")




let paises={
    ar:["Buenos Aires","La Pampa"],
    ve:["Margarita","Caracas"],
    ch:["Beijing","Shangai"]
}

let select=document.querySelector("select")

select.addEventListener("change",mostrarProvincia)

function mostrarProvincia(){

    let valor=select.value
    console.log(paises[valor]) //usarlo cuando dudo para debuggear
    
    let provincias = paises[valor]

    if (provincias=0) {
        
        
    }

}

let body=document.querySelector("body")
body.appendChild(select)

/*
1)Seleccionar el <select> @
2)Asignarle un evento change @
3)El callback del change tiene que poder agarrar el valor del select @ .value 
4)Con el valor obtenido, buscar en el objeto paises la propiedad que le corresponda
5)Si la propiedad no existe se tiene que ver en pantalla "Tiene que seleccionar una opcion" en color rojo
6)Si la propiedad existe, tenemos que recorrer el array que tiene como valor asociado
7)Por cada valor del array se tiene que crear un <option>
8)Agregar todos los option creados a un nuevo select
9)Agregar el select al DOM
*/

form.addEventListener("submit",handleSubmit)

function handleSubmit(e){
    e.preventDefault()
    //console.log(e.target[7].checked) //e.target=form
    let nombre=e.target[0].value
    console.log(nombre.trim().length)
}
//string.length nos da number con la longitud
//string.trim() le saca los espacios de lo que pones antes y despues casi no se usa en JS 