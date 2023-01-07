<?php
        error_reporting(E_ERROR | E_PARSE);
        $submit=false;

        //set connection variable
       $server="localhost";
        $username="root";
        $password="";
        $database="trip_data";
        
        // creating connection
        $con =mysqli_connect($server,$username,$password, $database);

        //check for connection
        if(!$con){
            die("connection to this database failed due to".mysqli_connect_error());
        }
        //echo "Success connecting to the db";

        // values collecting
        $name =$_POST['name'];
        $gender=$_POST['gender'];
        $age=$_POST['age'];
        $email=$_POST['email'];
        $phone=$_POST['phone'];
        $desc=$_POST['desc'];


            if(empty($name)){
                exit("please enter your name");
            }

            else if(empty($gender)){
                exit("please enter your gender");
            }

            else if(empty($age)){
                exit("please enter your age");
            }  

            else if(empty($email)){
                exit("please enter your email");
            }
            else if(empty($phone)){
                exit("please enter your phone no.");
            }
            else if(empty($desc)){
                exit("enter your covid status");
            }

            //validating name
            if(!preg_match("/^[a-zA-z ]*$/",$name)){
                exit("invalid name");
            }  

            //validating phone no.
            if(!preg_match('/^[6-9]\d{9}$/', $phone)){
                exit("invalid number");
            }

            // validating email
            if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
                exit("invalid email");
        }

            //validating age
            if(!preg_match("/^[0-9]+$/", $age)) 
            {
                exit("Invalid age");
            }
        $sql="INSERT INTO `data` (`Name`, `Age`, `Gender`, `email`, `phone`, `covid`, `dt`) VALUES ('$name','$age', '$gender', '$email', '$phone', '$desc' ,current_timestamp());";

        //Execute the query
        if($con->query($sql)==true){
            //echo "Successfully inserted";
            $submit=true;
        }
        else{
            echo "Error: $sql <br> $con -> error";
        }

        //connection close
        $con->close();
        //echo $sql; 
       

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Travel  Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    
    <div class="container">
        <h1>Welcome Travellers !!</h1>
        <h1>World Around Trip Form</h1>
        <p style="font-weight:bold ;font-size:20px">To participate fill the below details:</p>
        <?php 
        if($submit == true){
            echo "<p style='font-size=18px; font-weight=bold'> Thanks for submitting your form We are happy to hav you on  board </p>";
            echo " <p> If you wish, You may fill another for a friend or family memeber :).";
        }
        ?>

    </div>
    <br>
    <div class="form">
        <form action="index.php" method="post" >
            <input type="text" name="name" id="name" placeholder ="Enter your name">
            <input type="text" name="age" id="age" placeholder ="Enter your age">
            <input type="text" name="gender" id="gender" placeholder ="Enter your gender">
            <input type="email" name="email" id="email" placeholder ="Enter your email">
            <input type="phone" name="phone" id="phone" placeholder ="Enter your phone">
            <textarea name="desc" id="desc" cols="30" rows="10"  placeholder="If you have been COVID+ within last 3 months, please enter the details of your conditions and treatment here."></textarea>
            <span class="button">
            <button class="btn" >Submit</button>
            <button type="reset" class="rest">Reset</button>
            </span>
        </form>
    </div>
    <script src ="travel.js"></script>
</body>
</html>


