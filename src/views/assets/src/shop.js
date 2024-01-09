const $url=new URLSearchParams(window.location.search)
const getAll=async()=>{
  try{
    let res=await fetch(`http://localhost:4444/games?id=${$url.get("id")}`)
    let json= await res.json()
    console.log(json[0])
    if (!res.ok) throw{status: res.status,statusText:res.statusText};
    // let $a=document.querySelector(".h2")
    // $a.textContent="hola"

    document.querySelector(".portada").src=json[0].keyImages[0].url
    document.querySelector(".game-name").textContent=json[0].title
    document.querySelector(".description-game").textContent=json[0].description
    document.querySelector("b").textContent=json[0].price.totalPrice.fmtPrice.originalPrice =="0" ? "Gratis" : json[0].price.totalPrice.fmtPrice.originalPrice
    document.querySelector(".id").dataset.id=json[0].id
  }
  catch (err){
    let message=err.statusText || "Ocurrio un error"
  }
}
document.addEventListener("DOMContentLoaded",getAll);

document.querySelector("#comprar").addEventListener("click", function() {
  fetch('http://localhost:4000/insert', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      id: document.querySelector(".id").dataset.id,
      title: document.querySelector(".game-name").textContent,
      keyimage:document.querySelector(".portada").src ,
      description: document.querySelector(".description-game").textContent
    }),
  })
  .then(response => response.text())
  .then(data => console.log(data))
  .catch((error) => {
    console.error('Error:', error);
  });
});

// const info=async()=>{
//   try{
//     let res=await fetch("http://localhost:4000/getResults")
//     let json= await res.json()
//     console.log(json)
//     if (!res.ok) throw{status: res.status,statusText:res.statusText};
//     json.forEach(element => {
//       document.querySelector("form").action=`https://formsubmit.co/${element.user}`
      
//     });
//   }
//   catch (err){
//     let message=err.statusText || "Ocurrio un error"
//   }
// }
// document.addEventListener("DOMContentLoaded",info);