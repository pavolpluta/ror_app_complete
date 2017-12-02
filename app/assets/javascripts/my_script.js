
//Filtering
$(document).ready(function(){
    $("#searchBuilding").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $(".buildings .around_link_div,.rooms a").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
});

// function to merge <td> with same values in Schedule would be something I'd like to implement when
// I'll have skills to do that
