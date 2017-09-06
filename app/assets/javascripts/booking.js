$(document).ready(function(){
    $("#booking").on("click",function(){
        var name = $("#name").val();
        var mobile = $("#mobile").val();
        var email = $("#email").val();
        var ssn = $("#ssn").val();
        var booking_id =  $("#booking_id").val();
        var saveData = $.ajax({
            type: 'POST',
            url: "/booking",
            data: {
                name : name,
                mobile : mobile,
                email : email,
                ssn : ssn,
                booking_id : booking_id
            },
            dataType: "text",
            success: function(resultData) {
                $(".notice").show(); 
            $("#booking").prop('disabled', true);;}
      });
    });
});