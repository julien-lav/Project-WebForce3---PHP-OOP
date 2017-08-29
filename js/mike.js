$(function(){

	console.log(idItem);

	$.ajax({
		url: "http://localhost/Mike/php-object-webforce3/single" +idItem,
		method: "POST"
	

	}).done(function(data){
        var data = JSON.parse(data);
        for(var i, i<data.length,i++){
        	$("div.sp-wrap").append("<a href=" + data.picture[i].url + "><img src='" + data.picture[i].url +"alt=""'></a>");
        	$("#elem-reviews").text(date.reviews.length +" reviews ");
        }

         for(var i, i<data.reviews,i++){
        	$("#tabs-3").append("<p><strong>"+ data.reviews[i].username +"</strong></p>" + "<p>" data.reviews[i].username+ "</p>");
        }
    }
    /* document.location.href; */

	}).fail(function(jqXRH, textStatus){
		console.log("Request failed: ");
	})

});