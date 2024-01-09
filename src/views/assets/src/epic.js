const d =document,
  $template=d.getElementById("info-game").content,
  $fragment=d.createDocumentFragment(),
  $list=d.querySelector(".game")


const getAll=async()=>{
  try{
    let res=await fetch("http://localhost:4444/games")
    let json= await res.json()
    console.log(json[1])
    if (!res.ok) throw{status: res.status,statusText:res.statusText};

    json.forEach(element => {
      $template.querySelector("h1").textContent=element.title
      $template.querySelector("a").href=`/shop?id=${element.id}`
      $template.querySelector("img").src=element.keyImages[0].url
      $template.querySelector("p").textContent=element.description
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