$(document).ready(function() {
    setInterval ('cursorAnimation()', 1100);
});

function cursorAnimation() {
    $('#cursor').animate({
        opacity: 0
    }, 400).animate({
        opacity: 1
    }, 400);
}