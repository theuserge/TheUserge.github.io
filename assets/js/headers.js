Array.from(
    document.querySelectorAll('h1[id],h2[id],h3[id],h4[id],h5[id],h6[id]')
).forEach(h => {
    h.addEventListener('click', e => {
        window.location.hash = e.target.getAttribute('id');
    });
})