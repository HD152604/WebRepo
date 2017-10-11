$(document).ready(function() {
   $('#finalForm').submit(function(event) {

      event.preventDefault();

      var id = $('#signupId').val();
      var pwd = $('#signupPwd').val();
      console.log(id, pwd);

      $.post( "http://httpbin.org/post",
         {"id" : id, "pwd" : pwd },
         function(data) {
            var myModal2 = $('#myFinal');
            myModal2.modal();
            myModal2.find('.modal-body').text(data.form.id + '님 회원가입 되었습니다.');
         });
      });
});
