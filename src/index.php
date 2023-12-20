<?php

require_once 'HelloInterface.php';
require_once 'Hello.php';

$hello = new \Silarhi\Hello();
$message = $hello->display();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }

        .message-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 400px;
            margin: 0 auto;
        }

        .hello-message {
            color: #333;
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="message-container">
    <div class="hello-message"><?= $message ?></div>
    <p>This is a simple example of displaying message using PHP</p>
</div>

</body>
</html>
