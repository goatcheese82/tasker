$(function(){

    $("a.edit_user").on("click", function(e){
        $.get(this.href).success(function(response) {
            $("div.user_edit").html(response)
        }).error(function(none){
            alert("It broke")
        });
        e.preventDefault();
    })

})