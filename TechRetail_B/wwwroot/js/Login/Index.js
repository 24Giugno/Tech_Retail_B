
function valida() {
    function valida() {
        let u = document.getElementById("Mail").value;
        let p = document.getElementById("Passw").value;

        if (!u.includes("@")) {
            alert("Indirizzo mail non valido");
            return false;
        }

        if (p.length < 8) {
            alert("PASSWORD troppo breve, deve avere almeno 8 caratteri");
            return false;
        }

        return true;

        console.log("Successo");
    }
}