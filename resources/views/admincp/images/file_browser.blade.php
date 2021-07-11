<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thư viên ảnh</title>
    {{-- đường dẫn online cho thư viên ảnh --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js" integrity="sha512-n/4gHW3atM3QqRcbCn6ewmpxcLAHGaDjpEBu4xZd47N0W2oQ+6q7oc3PXstrJYXcbNU1OHdQ1T7pAP+gi5Yu8g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ckeditor/4.16.1/ckeditor.js" integrity="sha512-2nFxKVmFuBhAR45DBnAANBjtxzf7z0m6wRU7NOquxibA6efrQpUtdjFT4wzqewqTI3/cCNbBzJNUtu1NxjFiKw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    {{-- /đường dẫn online cho thư viên ảnh --}}
    <style> 
    ul.file-list{
        list-style: none;
        padding:0;
        margin: 0;
    }
    ul.file-list li{
        float: left;
        margin: 5px;
        border: 1px solid #ccc;
        padding:1px;
    }
    ul.file-list img{
        display: block;
        margin: 0 auto;

    }
    ul.file-list li:hover{
        background:cornsilk;
        cursor:pointer;
    }
    
    </style>
    
</head>
<body>
    
    <script type="text/javascript">

        $(document).ready(function(){
            var funNum = <?php echo $_GET['CKEditorFuncNum'].';';?>

            $('#list_img').on('click','img', function(){

                var fileUrl = $(this).attr('title');

                window.opener.CKEDITOR.tools.callFunction(funNum,fileUrl);
                window.close();

            }).hover(function(){
                $(this).css('cursor','pointer');
            });

        });

    </script>
    <div id="list_img">

        @foreach ($filename as $file)
            <div class="thumbnail">
                <ul class="file-list">
                    <li>
                        <img src="{{ asset('uploads/ckeditor/'.$file) }}" alt="" width="120" height="120" title="{{ asset('uploads/ckeditor/'.$file) }}" >
                    </li>
                </ul>
            </div>
        @endforeach
    </div>
</body>
</html>