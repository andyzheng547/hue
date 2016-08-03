// Sends data to server. Server handles api request to Philips Hue API
$("#light-controls").submit(function(e){
  e.preventDefault();

  $form = $(this);

  var data = {
    color: $('#color-select').val(),
    on: $('#light-checkbox').val()
  };

  $.ajax({
    url: $form.attr('action'),
    method: 'PUT',
    dataType: 'json',
    contentType: 'application/json',
    data: JSON.stringify(data)
  });

  return false;
});
