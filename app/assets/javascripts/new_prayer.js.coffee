$("#modal-window").find(".modal-content").html("<%= escape_javascript(render 'prayers/new_release') %>");
$('#modal-window').modal('show');