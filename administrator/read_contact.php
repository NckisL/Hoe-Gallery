<?php

$stmt = $conn->prepare("SELECT * FROM contact_admin");
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
//var_dump($result);die();
?>

<div class="container">

<h1 class="text-center mt-3 mb-3">Contact Message</h1>

<table class="table table-hover table-striped">
    <thead>
        <td>No.</td>
        <td>Email</td>
        <td>Name</td>
        <td>Subject</td>
        <td>Message</td>
        <td>Action</td>
    </thead>
    <tbody></tbody>
</table>

<script>
  $(document).ready(function(){

    $.ajax({
      url: 'http://localhost/hoegallery_v2/js/json_contact.php',
        method: 'post',
        dataType: 'json',
        success: function(result){
          //console.log(result);
          let row, table="";
          $.each(result, function(key, value){
            //alert(value.id_contact);
            row = '<tr>';
            row += '<td>' + value.id_contact + '</td>';
            row += '<td>' + value.email + '</td>';
            row += '<td>' + value.name + '</td>';
            row += '<td>' + value.subject + '</td>';
            row += '<td>' + value.message + '</td>';
            row += '<td>';
            row += '<a href="delete_contact.php?id=' + value.id_contact + '"class="btn btn-danger"><i class="fa-solid fa-trash"></i></a>';
            row += '</td>';
            row += '</tr>';
            table += row;
          });

          //alert(table);

          $('tbody').append(table);

        }
    });

  })
</script>