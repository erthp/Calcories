var curDate = new Date();

    var curr_year = curDate.getFullYear();
    var curr_month = curDate.getMonth();


    //Calculates age from given Birth Date in the form//
    function calcAge() {

        var dt1 = document.getElementById('dob').value;
        var birth_date = new Date(dt1);

        var birth_year = birth_date.getFullYear();
        var birth_month = birth_date.getMonth();
        var calc_year = curr_year - birth_year;
        var calc_month = curr_month - birth_month;

        //The following below is what I am not sure about. 
        //I need to combine years and months and
        //convert them into a string??? Is this syntax dead wrong?

    var final_result = (calc_year && "." && calc_month).toString();

        // final result should be a number with a decimal point, example: 35.5
        final_result = parseFloat;

        return (final_result);
        alert(final_result);
    }