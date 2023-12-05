var video = document.getElementById("myVideo");
var playPauseButton = document.getElementById("playPauseButton");
var muteButton = document.getElementById("muteButton");

playPauseButton.addEventListener("click", function() {
    if (video.paused) {
        video.play();
    } else {
        video.pause();
    }
});
muteButton.addEventListener("click", function() {
    if (video.muted) {
        video.muted = false;
    } else {
        video.muted = true;
    }
});