<?php 

// Database Configuration file

include('config.php');?>

<html>

<head>

    <title>Pagination</title>

    <!-- Bootstrap CDN -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- fordemos -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-8906663933481361"
     data-ad-slot="9236995934"
     data-ad-format="auto"
     data-full-width-responsive="true"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>

<table class="table">

    <tr>

    <th>#</th>  

    <th>Name</th>  

    <th>Phone Number</th>  

 <th>Email</th> 

   <th>Date</th>   



    </tr>



    <?php

//Getting default page number

        if (isset($_GET['pageno'])) {

            $pageno = $_GET['pageno'];

        } else {

            $pageno = 1;

        }



// Formula for pagination  

        $no_of_records_per_page = 10;

        $offset = ($pageno-1) * $no_of_records_per_page;

// Getting total number of pages

        $total_pages_sql = "SELECT COUNT(*) FROM tbluser";

        $result = mysqli_query($con,$total_pages_sql);

        $total_rows = mysqli_fetch_array($result)[0];

        $total_pages = ceil($total_rows / $no_of_records_per_page);



        $sql = "SELECT * FROM tbluser LIMIT $offset, $no_of_records_per_page";

        $res_data = mysqli_query($con,$sql);

        $cnt=1;

        while($row = mysqli_fetch_array($res_data)){?>



<tr>

    <td><?php echo $cnt;?></td>

    <td><?php echo $row['Name'];?></td>

    <td><?php echo $row['PhoneNumber'];?></td>

    <td><?php echo $row['Emailid'];?></td>

    <td><?php echo $row['PostingDate'];?></td>



</tr>



 <?php 

$cnt++;

  }

       

    ?>



</table>



<div align="center">

    <ul class="pagination" >

        <li><a href="?pageno=1">First</a></li>

        <li class="<?php if($pageno <= 1){ echo 'disabled'; } ?>">

            <a href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>">Prev</a>

        </li>

        <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?>">

            <a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?>">Next</a>

        </li>

        <li><a href="?pageno=<?php echo $total_pages; ?>">Last</a></li>

    </ul>

</div>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- fordemos -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-8906663933481361"
     data-ad-slot="9236995934"
     data-ad-format="auto"
     data-full-width-responsive="true"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>


</body>

</html>