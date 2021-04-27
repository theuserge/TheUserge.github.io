if (localStorage.mode) {
    if (localStorage.mode == "dark")
        document.body.classList.toggle("dark");
} else
    localStorage.setItem('mode', 'light')

function switchMode() {

    if (localStorage.mode == "dark")
        localStorage.setItem('mode', 'light')
    else
        localStorage.setItem('mode', 'dark')

    var element = document.body;
    element.classList.toggle("dark");
}
