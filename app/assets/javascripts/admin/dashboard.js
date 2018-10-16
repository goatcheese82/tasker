$(function () {
    $("a.admin_events_path").on("click", function (e) {
        $.get(this.href).success(function(response){
            $("div.comments").html(response)
        })
        e.preventDefault();
    })
})