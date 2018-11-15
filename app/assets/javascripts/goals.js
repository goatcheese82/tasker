$(function(){
    $("a.new_goal").on("click", function(e){
        $.get(this.href).success(function(response) {
            $("div.goal-setter").html(response)
        })
        e.preventDefault();
    })
    $("#new_goal").on("submit", function(e){
        alert("You clicked")
        e.preventDefault();
    })

})

