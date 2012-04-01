//= require jquery
//= require jquery_ujs
//= require_tree .

$.fn.change_year=function() {
    var year = parseInt($(this).val());
    $.post("/schoolkids/change_session_year.js", {chosen_year: year},null,'script');
    $(this).closest(".box").find(".hint").html(year);
};

$(function() {
    $("#move_data").click(function() { 
        var table = document.getElementById('rightTable');
        var index = table.getElementsByTagName('input');
        var id = document.getElementById('group_id').value;
        var arr = new Array(index.length-1);
        for( i = 1; i <= arr.length; i++) 
            arr[i-1] = index[i].value;
        $.post("save_data", {id: id, ids: arr});
        alert ("Данные сохранены.");
        return false;
    });
});

function check_all(table_id) {
    var table = document.getElementById(table_id);
    var arr = table.getElementsByTagName('input');
    if( arr[0].checked )
	for( i = 1; i < arr.length; i++)
	    arr[i].checked = true;
    else
	for( i = 1; i < arr.length; i++)
	    arr[i].checked = false;
}

function move_value(table_in, table_out) {
    var table = document.getElementById(table_in);
    var table2 = document.getElementById(table_out);
    var arr = table.getElementsByTagName('input');
    var last_index = table2.rows.length;
    for(i = arr.length-1, count = 0; i >= 1; i--) 
	if( arr[i].checked ) 
    {
        var index = arr[i].parentNode.parentNode.sectionRowIndex;
        arr[i].checked = false;
        var row = table2.insertRow( last_index++ );
        row.appendChild( arr[i].parentNode );
        table.deleteRow( index );
    }
}
