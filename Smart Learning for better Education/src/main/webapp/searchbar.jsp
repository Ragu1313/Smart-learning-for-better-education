<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search</title>
  <style>
    body {
      background-color: rgb(7, 7, 7);
      color: #e8e9ea;
    }
    h1 {
      text-align: center;
    }
    .search-container {
      margin-top: 7vw;
      display: flex;
      align-items: center;
    }
    .search-input {
      padding: 8px;
      border: none;
      border-radius: 4px 0 0 4px;
      font-size: 18px;
      flex: 1;
      text-align: center;
    }

    .search-button {
      font-size: 18px;
      padding: 8px 16px;
      border: 1px solid #ccc;
      border-radius: 0 4px 4px 0;
      background-color: #f8f9fa;
      cursor: pointer;
      border: none;
    }
    .search-button:hover {
      background-color: #e8e9ea;
    }
    .container {
      display: block;
    }
    .item {
      background-color: rgb(48, 47, 47);
      text-align: center;
      padding: 1vh;
      border: 1px solid #242222;
      margin: 5px;
    }
    
    .item:hover {
      background-color: rgb(28, 27, 27);
    }

    @media screen and (min-width:750px) {

      .search-input {
        margin-left: 10vw;
      }

      .search-button {
        margin-right: 10vw;
      }

      .item {
        margin-left: 10vw;
        margin-right: 10vw;
      }

    }

    li {
      text-decoration: none;
    }

    #searchResults {
      background-color: rgb(48, 47, 47);
      text-align: center;
      padding: 20px;
      border: 1px solid #ddd;
      margin: 5px;
    }

    #searchResults:hover {
      background-color: rgb(28, 27, 27);
    }
    .container1 {
      background-color: aqua;
    }
    .it {
      display: none;
    }

    button#item {
      font-size: 16px;
      background-color: #373333;
      color: #e8e9ea;
    }

    button#item:hover {
      background-color: rgb(28, 27, 27);
      cursor: pointer;
    }

    .hidden {
      margin-left: 10vw;
      margin-right: 10vw;
      padding: 1vw;
      width: 78vw;
    }

     #item1 {
      margin-left: 10vw;
      margin-right: 10vw;
      padding: 1vw;
      display: none;
      grid-template-columns: 1fr 1fr;
    }
    .item{
      margin-left: 10vw;
      margin-right: 10vw;
      padding: 1vw;
      display: grid;
      grid-template-columns: 1fr ;
    }

    a {
      margin-top: 15px;
      text-decoration: none;
      color: #e8e9ea;
    }
    
  </style>
</head>

<body>
  <h1>Learn With Us</h1>
  <!--<div class="search-container">
    <input type="text" class="search-input" placeholder="Search...">
    <button class="search-button" onclick="myfunction()">Search</button>
  </div>-->

  <br><br><br><br><br>
  <div class="container" id="summa">
  <form action="search" method="post">
    <button id="item" class="hidden" value="Array" name="value"> Array
      
    </button>
    </form>
    
    <form action="search" method="post">
    <button id="item" class="hidden" value="Stack"  name="value"> Stack
      
    </button>
    </form>
    
    <form action="search" method="post">
    <button id="item" class="hidden" value="Queue"  name="value"> Queue
      
    </button>
    </form>
    
    <form action="search" method="post">
    <button id="item" class="hidden" value="LinkedList"  name="value" > LinkedList
      
    </button>
    </form>
    
    <form action="search" method="post">
    <button id="item" class="hidden" value="HashMap"  name="value"> HashMap
      
    </button>
    </form>
     
    <form action="search" method="post">
    <button id="item" class="hidden" value="BFS"  name="value"> BFS
      
    </button>
    </form>
    <form action="search" method="post">
    <button id="item" class="hidden" value="Recursion"  name="value"> Recursion
      
    </button>
    </form>
    
    <form action="search" method="post">
    <button id="item" class="hidden" value="Two_Pointers"  name="value"> Two Pointers
      
    </button>
    </form>
    
    <form action="search" method="post">
    <button id="item" class="hidden" value="DFS"  name="value"> DFS
      
    </button>
    </form>
    </div>
  <script>
    function myfunction() {
      let a = document.getElementById('summa')
      a.classList.remove('container')
      a.classList.add('container1')
    }
    function myfunction1() {

    	document.getElementById('item1').style.display="grid"

    }

  </script>
</body>

</html>