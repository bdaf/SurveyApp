// Random colours from given array with those
function randomColour(a_colours) {
    let randomColor =  a_colours[Math.floor(Math.random() * a_colours.length)]
    document.getElementById("survey_fav_color").value = randomColor;
}