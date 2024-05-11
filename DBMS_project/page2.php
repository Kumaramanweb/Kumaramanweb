<?php require_once "controllerUserData.php"; ?>

<?php 
$email = $_SESSION['email'];
$password = $_SESSION['password'];
if($email != false && $password != false){
    $sql = "SELECT * FROM usertable WHERE email = '$email'";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
        $fetch_info = mysqli_fetch_assoc($run_Sql);
        $status = $fetch_info['status'];
        $code = $fetch_info['code'];
        if($status == "verified"){
            if($code != 0){
                header('Location: reset-code.php');
            }
        }else{
            header('Location: user-otp.php');
        }
    }
}else{
    header('Location: login-user.php');
}
?>

<html>
<head>
	<title>Academic Details</title>
	<link rel="stylesheet" type="text/css" href="https://ofa.iiti.ac.in/facrec_che_2023_july_02/images/favicon.ico" type="image/x-icon">
	<link rel="icon" href="https://ofa.iiti.ac.in/facrec_che_2023_july_02/images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="https://ofa.iiti.ac.in/facrec_che_2023_july_02/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="https://ofa.iiti.ac.in/facrec_che_2023_july_02/css/bootstrap-datepicker.css">
	<script type="text/javascript" src="https://ofa.iiti.ac.in/facrec_che_2023_july_02/js/jquery.js"></script>
	<script type="text/javascript" src="https://ofa.iiti.ac.in/facrec_che_2023_july_02/js/bootstrap.js"></script>
	<script type="text/javascript" src="https://ofa.iiti.ac.in/facrec_che_2023_july_02/js/bootstrap-datepicker.js"></script>

	<link href="https://fonts.googleapis.com/css?family=Sintony" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Hind&display=swap" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans&display=swap" rel="stylesheet"> 
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif&display=swap" rel="stylesheet">


	
</head>
<style type="text/css">
	body { background-color: lightgray; padding-top:0px!important;}

</style>
<body>
<div class="container-fluid" style="background-color: #f7ffff; margin-bottom: 10px;">
	<div class="container">
        <div class="row" style="margin-bottom:10px; ">
        	<div class="col-md-8 col-md-offset-2">

        		<!--  <img src="https://ofa.iiti.ac.in/facrec_che_2023_july_02/images/IITIndorelogo.png" alt="logo1" class="img-responsive" style="padding-top: 5px; height: 120px; float: left;"> -->

        		<h3 style="text-align:center;color:#414002!important;font-weight: bold;font-size: 2.3em; margin-top: 3px; font-family: 'Noto Sans', sans-serif;">भारतीय प्रौद्योगिकी संस्थान इंदौर</h3>
    			<h3 style="text-align:center;color: #414002!important;font-weight: bold;font-family: 'Oswald', sans-serif!important;font-size: 2.2em; margin-top: 0px;">Indian Institute of Technology Indore</h3>
    			

        	</div>
        	

    	   
        </div>
		    <!-- <h3 style="text-align:center; color: #414002; font-weight: bold;  font-family: 'Fjalla One', sans-serif!important; font-size: 2em;">Application for Academic Appointment</h3> -->
    </div>
   </div> 
			<h3 style="color: #e10425; margin-bottom: 20px; font-weight: bold; text-align: center;font-family: 'Noto Serif', serif;" class="blink_me">Application for Faculty Position</h3>


<script type="text/javascript">
var tr="";
var counter_acde=4;
  $(document).ready(function(){
    $("#add_more_acde").click(function(){
        create_tr();
        create_input('add_degree[]', 'Degree','add_degree'+counter_acde, 'acde', counter_acde, 'acde');
        create_input('add_college[]', 'College', 'add_college'+counter_acde,'acde', counter_acde, 'acde');
        create_input('add_subjects[]', 'Subjects', 'add_subjects'+counter_acde,'acde', counter_acde, 'acde');
        create_input('add_yoj[]', 'Year Of Joining', 'add_yoj'+counter_acde,'acde', counter_acde, 'acde');
        create_input('add_yog[]', 'Year Of Graduation','add_yog'+counter_acde, 'acde', counter_acde, 'acde');
        create_input('add_duration[]', 'Duration','add_duration'+counter_acde, 'acde', counter_acde, 'acde');
        create_input('add_perce[]', 'Percentage','add_perce'+counter_acde, 'acde', counter_acde, 'acde');
        create_input('add_rank[]', 'Rank', 'add_rank'+counter_acde,'acde', counter_acde,'acde',true);
        counter_acde++;
        return false;
    });
    
  });

  function create_tr()
  {
    tr=document.createElement("tr");
  }
  function for_date_picker(obj)
  {
    obj.setAttribute("data-provide", "datepicker");
    obj.className += " datepicker";
    return obj;

  }
  function create_input(t_name, place_value, id, tbody_id, counter, remove_name, btn=false, datepicker_set=false, length=80)
  {
    var input=document.createElement("input");
    input.setAttribute("type", "text");
    input.setAttribute("name", t_name);
    input.setAttribute("id", id);
    input.setAttribute("placeholder", place_value);
    input.setAttribute("class", "form-control input-md");
    input.setAttribute("required", "");
    if(datepicker_set==true)
    {
      input=for_date_picker(input);
    }
    var td=document.createElement("td");
    td.appendChild(input);
    if(btn==true)
    {
      // alert();
      var but=document.createElement("button");
      but.setAttribute("class", "close");
      but.setAttribute("onclick", "remove_row('"+remove_name+"','"+counter+"')");
      but.innerHTML="<span style='color:red; font-weight:bold;'>x</span>";
      td.appendChild(but);
    }
    tr.setAttribute("id", "row"+counter);
    tr.appendChild(td);
    document.getElementById(tbody_id).appendChild(tr);
    $('.datepicker').datepicker({
        format: 'dd/mm/yyyy',
        autoclose: true
    });
  } 
  function remove_row(remove_name, n)
  {
    var tab=document.getElementById(remove_name);
    var tr=document.getElementById("row"+n);
    tab.removeChild(tr);
  }
</script>

<script type="text/javascript">
    $(function () {
        $('.datepicker').datepicker({
            format: 'dd/mm/yyyy',
            autoclose: true
        });
    });
</script>
<style type="text/css">
body { padding-top:30px; }
.form-control { margin-bottom: 10px; }
.floating-box {
    display: inline-block;
    width: 150px;
    height: 75px;
    margin: 10px;
    border: 3px solid #73AD21;  
}
</style>
<style type="text/css">
body { padding-top:30px; }
.form-control { margin-bottom: 10px; }
label{
  padding: 0 !important;
}
hr{
  border-top: 1px solid #025198 !important;
}
span{
  font-size: 1.2em;
  font-family: 'Oswald', sans-serif!important;
  text-align: left!important;
  padding: 0px 10px 0px 0px!important;
  /*margin-bottom: 20px!important;*/

}
hr{
  border-top: 1px solid #025198 !important;
  border-style: dashed!important;
  border-width: 1.2px;
}

.panel-heading{
  font-size: 1.3em;
  font-family: 'Oswald', sans-serif!important;
  letter-spacing: .5px;
}
.btn-primary {
  padding: 9px;
}
</style>





<div class="container">




<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 well">
        <form class="form-horizontal" action="controllerUserData.php" method="POST" enctype="multipart/form-data">
          <input type="hidden" name="ci_csrf_token" value="" />
        <fieldset>
         
             <legend>
              <div class="row">
                <div class="col-md-10">
                    <h4>Welcome : <font color="#025198"><strong><?php echo $fetch_info['name'] ?></strong></font></h4>
                </div>
                <div class="col-md-2">
                  <a href="login-user.php" class="btn btn-sm btn-success  pull-right">Logout</a>
                </div>
              </div>
            
            
    </legend>

<h4 style="text-align:center; font-weight: bold; color: #6739bb;">2. Educational Qualifications</h4>
<div class="row">
    <div class="col-md-12">
      <div class="panel panel-success">
      <div class="panel-heading">(A) Details of PhD *</div>
        <div class="panel-body">
        <input type="hidden" name="educational_qualifications_id" value="<?php echo $educational_qualifications_id; ?>">

          <span class="col-md-2 control-label" for="college_phd">University/Institute</span>  
          <div class="col-md-4">
          <input id="college_phd" value="252-839-7224" name="college_phd" type="text" placeholder="University/Institute" class="form-control input-md" autofocus="" required="">
          </div>

          <span class="col-md-2 control-label" for="stream">Department</span>  
          <div class="col-md-4">
          <input id="stream" value="92507 Tatum Point" name="stream" type="text" placeholder="Department" class="form-control input-md" autofocus="">
          </div> 
          
          <span class="col-md-2 control-label" for="duration_phd">Name of PhD Supervisor</span>  
          <div class="col-md-4">
          <input id="supervisor" name="supervisor" type="text" placeholder="Name of Ph. D. Supervisor" value="Repellat porro ut." class="form-control input-md" required="">
          </div>

          <span class="col-md-2 control-label" for="yoj_phd">Year of Joining</span>  
          <div class="col-md-4">
          <input id="yoj_phd" value="365-612-6023" name="yoj_phd" type="text" placeholder="Year of Joining" class="form-control input-md" required="">
          </div>
          
          <div class="row">
          <div class="col-md-12">
          <span class="col-md-2 control-label" for="dod_phd">Date of Successful Thesis Defence</span>  
          <div class="col-md-4">
          <input id="dod_phd" name="dod_phd" type="text" data-provide="datepicker" placeholder="Date of Defence" value="01/01/1970" class="form-control input-md datepicker" required="">
          </div>

          <span class="col-md-2 control-label" for="doa_phd">Date of Award</span>  
          <div class="col-md-4">
          <input id="doa_phd" name="doa_phd" type="text" data-provide="datepicker" placeholder="Date of Award" value="01/01/1970" class="form-control input-md datepicker" required="">
          </div>
          </div>
          </div>
          <br />
          <span class="col-md-2 control-label" for="phd_title">Title of PhD Thesis</span>  
          <div class="col-md-10">
          <input id="phd_title" value="Dynamic Research Developer" name="phd_title" type="text" placeholder="Title of PhD Thesis" class="form-control input-md" required="">
          </div>

      </div>
    </div>
  </div>
</div>


<div class="row">
    <div class="col-md-12">
      <div class="panel panel-success">
      <div class="panel-heading">(B) Academic Details - M. Tech./ M.E./ PG Details</div>
        <div class="panel-body">
        <input type="hidden" name="educational_qualifications_id" value="<?php echo $educational_qualifications_id; ?>">

          <span class="col-md-2 control-label" for="pg_degree">Degree/Certificate</span>  
          <div class="col-md-4">
          <input id="pg_degree" value="2024-06-02 05:14:35" name="pg_degree" type="text" placeholder="Degree/Certificate" class="form-control input-md" autofocus="">
          </div>

          <span class="col-md-2 control-label" for="pg_college">University/Institute</span>  
          <div class="col-md-4">
          <input id="pg_college" value="Consequuntur laudantium voluptatem quibusdam blanditiis minima ut." name="pg_college" type="text" placeholder="University/Institute" class="form-control input-md" autofocus="">
          </div> 
          
          <span class="col-md-2 control-label" for="pg_subjects">Branch/Stream</span>  
          <div class="col-md-4">
          <input id="pg_subjects" name="pg_subjects" type="text" placeholder="Branch/Stream" value="Veritatis molestiae nisi veniam labore." class="form-control input-md" >
          </div>

          <span class="col-md-2 control-label" for="pg_yoj">Year of Joining</span>  
          <div class="col-md-4">
          <input id="pg_yoj" value="Vitae illum autem dicta facilis ab suscipit minus voluptatem." name="pg_yoj" type="text" placeholder="Year of Joining" class="form-control input-md" >
          </div>
          
          <div class="row">
          <div class="col-md-12">
          <span class="col-md-2 control-label" for="pg_yog">Year of Completion</span>  
          <div class="col-md-4">
          <input id="pg_yog" name="pg_yog" type="text" placeholder="Year of Completion" value="Expedita vero suscipit explicabo." class="form-control input-md" >
          </div>

          <span class="col-md-2 control-label" for="pg_duration">Duration (in years)</span>  
          <div class="col-md-4">
          <input id="pg_duration" name="pg_duration" type="text" placeholder="Duration" value="2024" class="form-control input-md" >
          </div>

          <span class="col-md-2 control-label" for="pg_perce">Percentage/ CGPA</span>  
          <div class="col-md-4">
          <input id="pg_perce" name="pg_perce" type="text" placeholder="Percentage/ CGPA" value="1802 Bogan Cape" class="form-control input-md" >
          </div>

          <span class="col-md-2 control-label" for="pg_rank">Division/Class</span>  
          <div class="col-md-4">
          <input id="pg_rank" name="pg_rank" type="text" placeholder="Division/Class" value="Vitae tenetur dicta aperiam provident sunt molestiae deleniti. Voluptates suscipit illo eum animi reprehenderit saepe. Deserunt fugiat necessitatibus." class="form-control input-md" >
          </div>

          </div>
          </div>
          <br />
          

      </div>
    </div>
  </div>
</div>



<div class="row">
    <div class="col-md-12">
      <div class="panel panel-success">
      <div class="panel-heading">(C) Academic Details - B. Tech /B.E. / UG Details *</div>
        <div class="panel-body">
        <input type="hidden" name="educational_qualifications_id" value="<?php echo $educational_qualifications_id; ?>">

          <span class="col-md-2 control-label" for="ug_degree">Degree/Certificate</span>  
          <div class="col-md-4">
          <input id="ug_degree" value="2025-03-30 02:23:01" name="ug_degree" type="text" placeholder="Degree/Certificate" class="form-control input-md" autofocus="" required="">
          </div>

          <span class="col-md-2 control-label" for="ug_college">University/Institute</span>  
          <div class="col-md-4">
          <input id="ug_college" value="Asperiores sed nam ullam iste blanditiis tenetur." name="ug_college" type="text" placeholder="University/Institute" class="form-control input-md" autofocus="">
          </div> 
          
          <span class="col-md-2 control-label" for="ug_subjects">Branch/Stream</span>  
          <div class="col-md-4">
          <input id="ug_subjects" name="ug_subjects" type="text" placeholder="Branch/Stream" value="Provident cum facere saepe iste ut occaecati maxime." class="form-control input-md" required="">
          </div>

          <span class="col-md-2 control-label" for="ug_yoj">Year of Joining</span>  
          <div class="col-md-4">
          <input id="ug_yoj" value="+Ipsam et delectus ea dolorum dignissimos nobis." name="ug_yoj" type="text" placeholder="Year of Joining" class="form-control input-md" required="">
          </div>
          
          <div class="row">
          <div class="col-md-12">
          <span class="col-md-2 control-label" for="ug_yog">Year of Completion</span>  
          <div class="col-md-4">
          <input id="ug_yog" name="ug_yog" type="text" placeholder="Year of Completion" value="Autem aut nisi sint natus eius voluptatibus veritatis eaque." class="form-control input-md" required="">
          </div>

          <span class="col-md-2 control-label" for="ug_duration">Duration (in years)</span>  
          <div class="col-md-4">
          <input id="ug_duration" name="ug_duration" type="text" placeholder="Duration" value="2023" class="form-control input-md" required="">
          </div>

          <span class="col-md-2 control-label" for="ug_perce">Percentage/ CGPA</span>  
          <div class="col-md-4">
          <input id="ug_perce" name="ug_perce" type="text" placeholder="Percentage/ CGPA" value="1891 Emerald Springs" class="form-control input-md" required="">
          </div>

          <span class="col-md-2 control-label" for="ug_rank">Division/Class</span>  
          <div class="col-md-4">
          <input id="ug_rank" name="ug_rank" type="text" placeholder="Division/Class" value="Illum quisquam dicta rem sapiente sed." class="form-control input-md" required="">
          </div>

          

          </div>
          </div>
          <br />
          

      </div>
    </div>
  </div>
</div>


<div class="row">
    <div class="col-md-12">
      <div class="panel panel-success">
      <div class="panel-heading">(D) Academic Details - School *
        
      </div>
        <div class="panel-body">
          <table class="table table-bordered">
              
              <tr height="30px">
                <th class="col-md-3"> 10th/12th/HSC/Diploma </th>
                <th class="col-md-3"> School </th>
                <th class="col-md-1"> Year of Passing</th>
                <th class="col-md-2"> Percentage/ Grade </th>
                <th class="col-md-2"> Division/Class </th>
              </tr>
              <input type="hidden" name="educational_qualifications_id" value="<?php echo $educational_qualifications_id; ?>">

              
              <tr height="60px">
                <td class="col-md-2">  
                    <input id="hsc_ssc1" name="hsc_ssc1" type="text" value="12th/HSC/Diploma" placeholder="" class="form-control input-md" readonly="" required=""> 
                </td>

                <td class="col-md-2"> 
                    <input id="school1" name="school1" type="text" value="Repellat iure nam cum."  placeholder="School" class="form-control input-md" maxlength="80" required=""> 
                  </td>
                <td class="col-md-2"> 
                  <input id="passing_year1" name="passing_year1" type="text" value="epGyR"  placeholder="Passing Year" class="form-control input-md" maxlength="5" required=""> 
                </td>

              

                <td class="col-md-2"> 
                  <input id="s_perce1" name="s_perce1" type="text" value="89602"  placeholder="Percentage/Grade" class="form-control input-md" maxlength="5" required="">
                </td>

                 
                <td class="col-md-2"> 
                  <input id="s_rank1" name="s_rank1" type="text" value="Autem"  placeholder="Percentage/Grade" class="form-control input-md" maxlength="5" required="">
                </td>


              </tr>
              
              <tr height="60px">
                <td class="col-md-2">  
                    <input id="hsc_ssc2" name="hsc_ssc2" type="text" value="10th" placeholder="" class="form-control input-md" readonly="" required=""> 
                </td>

                <td class="col-md-2"> 
                    <input id="school2" name="school2" type="text" value="Expedita ex fugiat excepturi quidem laudantium."  placeholder="School" class="form-control input-md" maxlength="80" required=""> 
                  </td>
                <td class="col-md-2"> 
                  <input id="passing_year2" name="passing_year2" type="text" value="hfKp9"  placeholder="Passing Year" class="form-control input-md" maxlength="5" required=""> 
                </td>

              

                <td class="col-md-2"> 
                  <input id="s_perce2" name="s_perce2" type="text" value="248 J"  placeholder="Percentage/Grade" class="form-control input-md" maxlength="5" required="">
                </td>

                 
                <td class="col-md-2"> 
                  <input id="s_rank2" name="s_rank2" type="text" value="Hic m"  placeholder="Percentage/Grade" class="form-control input-md" maxlength="5" required="">
                </td>


              </tr>
                            
           
          </table>

      </div>
    </div>
  </div>
</div>
 
<div class="row">
    <div class="col-md-12">
      <div class="panel panel-success">
      <div class="panel-heading">(E) Additional Educational Qualification (If any)
        <button class="btn btn-sm btn-danger" id="add_more_acde">Add More</button>
      </div>
        <div class="panel-body">
          <table class="table table-bordered">
              <tbody id="acde">
              
              <tr height="30px">
                <th class="col-md-2"> Degree/Certificate </th>
                <th class="col-md-2"> University/Institute </th>
                <th class="col-md-2"> Branch/Stream </th>
                <th class="col-md-1"> Year of Joining</th>
                <th class="col-md-1"> Year of Completion </th>
                <th class="col-md-1"> Duration (in years)</th>
                <th class="col-md-3"> Percentage/ CGPA </th>
                <th class="col-md-3"> Division/Class</th>
              </tr>
              
              
            
              <input type="hidden" name="educational_qualifications_id" value="<?php echo $educational_qualifications_id; ?>">

              <tr height="60px">
                <td class="col-md-2">  
                    <input id="add_degree1" name="degree1" type="text" value="45211 Hage" placeholder="Degree" class="form-control input-md" maxlength="10" required=""> 
                </td>

                <td class="col-md-2"> 
                    <input id="add_college1" name="university_institute1" type="text" value="64534 Marks Canyon"  placeholder="College" class="form-control input-md" maxlength="80" required=""> 
                  </td>

                 <td class="col-md-2"> 
                    <input id="add_subjects1" name="branch_stream1" type="text" value="104 Gladyce Ridge"  placeholder="Subjects" class="form-control input-md" maxlength="80" required=""> 
                  </td>

                <td class="col-md-2"> 
                  <input id="add_yoj1" name="year_of_joining1" type="text" value="9745 "  placeholder="Year of Joining" class="form-control input-md" maxlength="5" required=""> 
                </td>
                <td class="col-md-2"> 
                  <input id="add_yog1" name="year_of_completion1" type="text" value="181 M"  placeholder="Year of Graduation" class="form-control input-md" maxlength="5" required=""> 
                </td>
                <td class="col-md-2"> 
                  <input id="add_duration1" name="duration_years1" type="text" value="5578"  placeholder="Duration" class="form-control input-md" maxlength="4" required=""> 
                </td>

                <td class="col-md-2"> 
                  <input id="add_perce1" name="percentage_cgpa1" type="text" value="2794 "  placeholder="Percentage" class="form-control input-md" maxlength="5" required="">
                </td>

                <td class="col-md-2"> 
                  <input id="add_rank1" name="division_class1" type="text" value="Expli"  placeholder="Percentage" class="form-control input-md" maxlength="5" required="">
                </td>
                
              </tr>
              
            

              <tr height="60px">
                <td class="col-md-2">  
                    <input id="add_degree2" name="degree2" type="text" value="501 Abdul " placeholder="Degree" class="form-control input-md" maxlength="10" required=""> 
                </td>

                <td class="col-md-2"> 
                    <input id="add_college2" name="university_institute2" type="text" value="461 Alexys Unions"  placeholder="College" class="form-control input-md" maxlength="80" required=""> 
                  </td>

                 <td class="col-md-2"> 
                    <input id="add_subjects2" name="branch_stream2" type="text" value="5755 Von Wall"  placeholder="Subjects" class="form-control input-md" maxlength="80" required=""> 
                  </td>

                <td class="col-md-2"> 
                  <input id="add_yoj2" name="year_of_joining2" type="text" value="44516"  placeholder="Year of Joining" class="form-control input-md" maxlength="5" required=""> 
                </td>
                <td class="col-md-2"> 
                  <input id="add_yog2" name="year_of_completion2" type="text" value="6202 "  placeholder="Year of Graduation" class="form-control input-md" maxlength="5" required=""> 
                </td>
                <td class="col-md-2"> 
                  <input id="add_duration2" name="duration_years2" type="text" value="1117"  placeholder="Duration" class="form-control input-md" maxlength="4" required=""> 
                </td>

                <td class="col-md-2"> 
                  <input id="add_perce2" name="percentage_cgpa2" type="text" value="2094 "  placeholder="Percentage" class="form-control input-md" maxlength="5" required="">
                </td>

                <td class="col-md-2"> 
                  <input id="add_rank2" name="division_class2" type="text" value="Assum"  placeholder="Percentage" class="form-control input-md" maxlength="5" required="">
                </td>
                
              </tr>
                            
           
            </tbody>
          </table>

      </div>
    </div>
  </div>
</div>


            <!-- Form Name -->



<div class="form-group">
  
  <div class="col-md-1">
    <a href="page1.php" class="btn btn-primary pull-left"><i class="glyphicon glyphicon-fast-backward"></i></a>
  </div>

  <div class="col-md-11">
    <button href="page3.php" id="submit" type="submit" name="submit2" value="Submit" class="btn btn-success pull-right" style="margin-left: 75%;">SAVE & NEXT</button>
    
  </div>

    
</div>
          
</fieldset>
</form>

        </div>
    </div>
</div>

<script type="text/javascript">
  function yearcalc()
  { 
    // alert('hi');
    var num1=document.getElementById("yoj").value;
    var num2=document.getElementById("yog").value;

    var duration_year=parseFloat(num2)-parseFloat(num1);
    // alert(duration_year);
    document.getElementById("result_test").value = duration_year ;
   
  }

 
</script>

<div id="footer"></div>
</body>
</html>

<script type="text/javascript">
	
	function blinker() {
	    $('.blink_me').fadeOut(500);
	    $('.blink_me').fadeIn(500);
	}

	setInterval(blinker, 1000);
</script>