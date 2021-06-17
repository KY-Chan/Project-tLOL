$(function() {
    $(".search").on('click', function(){
        var userId = $('input[type="search"]').val();
        console.log(userId);
        if(userId == "천둥번개망치") {
            window.location.href = "result.html";
    } else {
        alert("입력하신 소환사가 없습니다.");
        $('input[type="search"]').val("");
        $(userId).focus();
    }
    });

    
});
