if (localStorage.mode) {
    if (localStorage.mode == "dark")
        document.body.classList.toggle("dark");
    else
        document.body.classList.toggle("light");
} else
    localStorage.setItem('mode', 'light')

function switchMode() {
    var element = document.body;
    if (localStorage.mode == "dark") {
        localStorage.setItem('mode', 'light')
        element.classList.toggle("light");
    } else {
        localStorage.setItem('mode', 'dark')
        element.classList.toggle("dark");
    }
}