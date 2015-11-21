"use strict";
$(document).ready(function () {
	addLecture();
});
function addLecture() {
    $("#addLecture").click(function () {
        var word = $("#inputed_word").val();
        $.get('dict.php', {'word': word})
                .done(ajaxSuccess)
                .fail(ajaxError);
    });
}
function ajaxSuccess(data) {
    $('#definitions').empty();

    for (var i = 0; i < data.length; i++) {
        $('<div id="wordtype">').text(data[i].wordtype).appendTo('#definitions');
        $('<div id="definition">').text(data[i].definition).appendTo('#definitions');
    }
}
function ajaxError(xhr, status, exception) {
    $('#errors').text('An ajax error occurred.');
    $("<div>").text('status = ' + status + ' xhr = ' + xhr + ' exception = ' + exception).appendTo('#errors');
}