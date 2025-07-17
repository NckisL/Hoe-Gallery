$(document).ready(function(){

    $.ajax({
      url: 'http://localhost/hoegallery_v2/js/json_image.php',
        method: 'post',
        dataType: 'json',
        success: function(result){
          console.log(result);
          let row, table="";
          $.each(result, function(key, value){
            //alert(value.id_img);
            row = '<tr>';
            row += '<td>' + value.id_img + '</td>';
            row += '<td>' + value.img_name + '</td>';
            row += '<td>' + value.category + '</td>';
            row += "<td><img src='../" + value.imagepath + "' alt='"+ value.img_name +"' Class='news-img'></td><td>";
            row += '<a edimg-id=' + value.id_img +'" class="btnEdit btn btn-primary"><i class="fa-solid fa-pen-to-square"></i></a> ';
            row += '<a delimg-id='+ value.id_img +'" class="btnDelete btn btn-danger"><i class="fa-solid fa-trash"></i></a>';
            row += '</td>';
            row += '</tr>';
            table += row;
          });

          //alert(table);

          $('tbody').append(table);

          $('.btnTambah').on("click", function(){
            $('#addImgModal').modal('show');
          });

          $('.btnActTambah').on('click', function(){
            let ImgName = $('#txtImgName').val();
            let Category = $('#txtCategory').val();
            let ImgPath = $('#readImg').val();
            let fileName = ImgPath.split('\\').pop();
            console.log('Nama File:', fileName);

            $.ajax({
              url: './../administrator/img_proccess.php',
              method: 'post',
              data: {
                "proses": 'Add',
                "img_name": ImgName,
                "category": Category,
                "imagepath": fileName
              },
              dataType: 'json',
              success: function(response){
                console.log(response);
                if(response.status == 'success'){
                  alert('Data Added Successfully.');
                  location.reload();
                }else{
                  alert('Data Failed to Add.');
                }
              }
            });
          });

        }
    });

  })