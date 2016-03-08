var player;
var videoURL;

function onYouTubeIframeAPIReady() {

    videoURL = document.getElementById("outsideHiddenField").value;

    player = new YT.Player('player', {
        height: '250',
        width: '250',
        videoId: videoURL,
        events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
        }

    });
}

function onPlayerReady(event) {
    player.playVideo;
}

function onPlayerStateChange(enent) {
    if (event.data == YT.PlayerState.ENDED) {
        player.playVideo;
        player.pauseVideo;
    }
}