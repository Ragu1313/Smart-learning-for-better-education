<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rating Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
            color: aliceblue;
            background-color: rgb(7, 7, 7);
        }
        .rating-form {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .rating-form h2 {
            text-align: center;
        }
        .rating-form label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        .rating-form input[type="text"],
        .rating-form input[type="number"],
        .rating-form select {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .rating-form input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .rating-form input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <form class="rating-form" action="rating">
        <h2>Rating Form</h2>
        
        <label for="topic">Topic:</label>
        <select id="topic" name="topic" required>
            <option value="">Select a topic</option>
            <option value="Array">Array</option>
            <option value="HashMap">HashMap</option>
            <option value="B Tree">B Tree</option>
            <option value="B+ Tree">B+ Tree</option>
            <option value="LinkedList">LinkedList</option>
        </select>

        <label for="name">Your Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="rating">Your Rating (1 to 5):</label>
        <input type="number" id="rating" name="rating" min="1" max="5" required>

        <input type="submit" value="Submit">
    </form>

</body>
</html>
