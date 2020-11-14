<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>AJAX</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script>
    function sendGreeting() {
        $.ajax({
            type: 'GET',
            url: 'http://localhost:8080/job4j_Ajax/greet',
            data: 'name=' + $('#exampleInputEmail1').val(),
            dataType: 'json'
        }).done(function (data) {
         //   let jsData = JSON.parse(data)
        //    console.log(jsData)

            var newElems = $("<div/>")
                .append(data)
             $(' #d').prepend(newElems);
        }).fail(function (err) {
            alert(err);
        });
    }
</script>

<div class="container">
    <form>
        <div class="form-group" id="d">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                   placeholder="Enter email">
        </div>
        <button type="button" class="btn btn-primary" onclick="sendGreeting()">Submit</button>
    </form>
</div>
</body>
</html>
