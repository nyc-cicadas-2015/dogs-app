$(document).ready(function() {
  $('#hacker-mode').on('click', function(e) {
    e.preventDefault();
    $("body").css({
      backgroundColor: "black",
      color: "green"
    });
  });


  $('#new_dog_link').on('click', function(event) {
    event.preventDefault();

    $.ajax({
      url: '/dogs/new',
      method: 'get'
    }).done(function(data) {
      $('#new_dog_form_holder').append(data);
    });
  });


  $('#new_dog_form_holder').on('submit', '#new_dog_form', function(event) {
    event.preventDefault();

    $.ajax({
      url: '/dogs',
      method: 'post',
      data: $('#new_dog_form').serialize()
    }).done(function(data) {
      $('#dog_park').prepend(data);
    }).fail(function() {
      console.log('Couldn\'t create a dog.');
    })
  });

});
