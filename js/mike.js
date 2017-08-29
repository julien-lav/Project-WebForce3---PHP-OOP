$(function(){


function singleItem(){	

	$.ajax({
		url: "http://localhost/Mike/php-object-webforce3/single" + idItem,
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
}

function shopListItem(){
	$.ajax({
		url: "http://localhost/Mike/php-object-webforce3/shop-list",
		method: "POST",
		data: {price : "0 AND 10"}

	}).done(function(data){
        var data = JSON.parse(data);
        // console.log('data');
        console.log(data);

       
    }
    /* document.location.href; */

	}).fail(function(jqXRH, textStatus){
		console.log("Request failed: ");
	})
}
 	
 	switch (typePage){
 		case 1:
 			singleItem()
 			break;
 		case 2:
 			shopListItem()
 			break;
 			
 		default:
 			console.log("Ok")
 	} 

});