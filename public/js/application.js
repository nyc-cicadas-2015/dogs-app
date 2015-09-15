$(document).ready(function() {
  $('#hacker-mode').on('click', function(e) {
    e.preventDefault();
    $("body").css({
      backgroundColor: "black",
      color: "green"
    });
  });
});
