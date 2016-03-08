var player;
var videoURL;

function onYouTubeIframeAPIReady() {

    videoURL = document.getElementById("youtubeHiddenField").value;

    player = new YT.Player('player', {
        height:'500',
        width:'500',
        videoId:videoURL,
        events:{
            'onReady':onPlayerReady,
            'onStateChange':onPlayerStateChange
        }

    });
}

function onPlayerReady(event){
    player.playVideo;
}

function onPlayerStateChange(enent){
    if(event.data == YT.PlayerState.ENDED){
        player.playVideo;
        player.pauseVideo;
    }
}