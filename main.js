function nascondiDescrizione() {
    var descrizioni = document.getElementsByClassName("descrizione");
    var bottone = document.getElementById("bottone");
    for (var i = 0; i < descrizioni.length; i++) {
        if (descrizioni[i].style.display === "none") {
            descrizioni[i].style.display = "block"; 
            bottone.innerHTML = "Nascondi";
        } else {
            descrizioni[i].style.display = "none";
            bottone.innerHTML = "Mostra";
        }
    }
}