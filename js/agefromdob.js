$(function calculateAge() {
        $('dob').datepicker({ 
          format: "yyyy-mm-dd",
          autoclose: true, 
          onSelect:function(dateText){
            var today = new Date();
            var birthDate = new Date(dateText);
            var age = today.getFullYear() - birthDate.getFullYear();
            var m = today.getMonth() - birthDate.getMonth();
            if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) 
            {
                age--;
            }
            $('age').text(age);
           }
       });
    });