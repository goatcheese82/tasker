$(function(){
    $("a.create_event").on("click", function(e){
        $.get(this.href).success(function(response){
            $("div.new_event").html(response)
        }).error(function(none){
            alert("It broke")
        });

        e.preventDefault();
    })

//    $("a.list_events").on("click", function(e){
//        $.get(this.href).success(function(json){
//            let $ol = $("div.events ol")
//            $ol.html("")
//            json.forEach(function(event){
//                $ol.append("<li>" + event.title + ", " + event.summary + "</li>");
//            })
//        })
//        e.preventDefault();
//    })
 //   $("a.list_events").on("click", function(e){
 //       $.ajax({
 //           url: this.href,
 //           dataType: 'script'
 //       })
 //       e.preventDefault();
 //   })
})

