
async function epic(){
    const url = 'https://epic-store-games.p.rapidapi.com/comingSoon';
    const options = {
        method: 'GET',
        headers: {
            'X-RapidAPI-Key': '5968a1e6d6msh5cec0c441c2d23bp18bfcejsnfd175d9ca55c',
            'X-RapidAPI-Host': 'epic-store-games.p.rapidapi.com'
        }
    };
    
    try {
        const response = await fetch(url, options);
        const result = await response.text();

        console.log(result);

        let $imagen=document.getElementById("parrafo")
        $imagen.textContent=result
    } catch (error) {
        console.error(error);
    }
}
epic()

