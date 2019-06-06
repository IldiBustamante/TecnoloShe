let form = document.querySelector("form")
// puedo evitar agarrarlo let input = document.querySelector("input")

form.addEventListener("submit",handleSubmit)

function handleSubmit(e){
    e.preventDefault()
    console.log(e.target[0].value) //e.target=form

}

