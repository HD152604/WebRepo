$(document).ready(function() {
   $('#joinForm').submit(function(event) {

      event.preventDefault();


      var id = $('#id').val();
      var pwd = $('#pwd').val();
      console.log(id, pwd);

      $.post( "http://httpbin.org/post",
         {"id" : id, "pwd" : pwd },
         function(data) {
            var myModal = $('#mySign');
            myModal.modal();
         });
      });
});
