const d =document,
  $template=d.getElementById("info-game").content,
  $fragment=d.createDocumentFragment(),
  $list=d.querySelector(".juegos-b")


const getAll=async()=>{
  try{
    let res=await fetch("http://localhost:4000/getResults")
    let json= await res.json()
    console.log(json)
    if (!res.ok) throw{status: res.status,statusText:res.statusText};

    json.forEach(element => {
      $template.querySelector("img").src=element.keyimage
      let $clone=d.importNode($template,true)
      $fragment.appendChild($clone)
    });
    $list.appendChild($fragment)
  }
  catch (err){
    let message=err.statusText || "Ocurrio un error"
  }
}
d.addEventListener("DOMContentLoaded",getAll);