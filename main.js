
const passwordInput = document.getElementById("password")

const passwordValid = () => {
	if(passwordInput.value > 8){
		console.log("grater")
	} else {
		console.log("low")
	}
}