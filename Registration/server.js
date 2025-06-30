const express = require('express');
const app = express();
const mysqlConnection = require('../Registration/login/database'); 

app.get('/', (req, res) => {
  mysqlConnection.query('SELECT * FROM visitor', (error, results) => {
    if (error) {
      throw error;
    } else {
      res.send(generateHTML(results));
    }
  });
});

function generateHTML(visitors) {
  let html = `
    <html>
      <head>
        <title>User Details</title>
        <style>
          body {
            background-color: #000;
            color: #fff;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
          }
          header {
            background-color: #333;
            padding: 10px;
          }
          nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
          }
          nav ul li {
            display: inline;
            margin-right: 10px;
          }
          nav ul li a {
            color: #fff;
            text-decoration: none;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
          }
          nav ul li a:hover {
            background-color: #555;
          }
          table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
          }
          table th, table td {
            border: 1px solid #fff;
            padding: 8px;
            text-align: left;
          }
          table th {
            background-color: #333;
          }
          table tr:nth-child(even) {
            background-color: #555;
          }
        </style>
      </head>
      <body>
        <header>
          <nav>
            <ul>
              <li><a href="http://127.0.0.1:5501/Layout.html">Home</a></li>
            </ul>
          </nav>
        </header>
        <h1 style="text-align: center;">User Details</h1>
        <table>
          <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Password</th>
          </tr>`;

  visitors.forEach((visitor) => {
    html += `
          <tr>
            <td>${visitor.id}</td>
            <td>${visitor.username}</td>
            <td>${visitor.email}</td>
            <td>${visitor.password}</td>
          </tr>`;
  });

  html += `
        </table>
      </body>
    </html>`;

  return html;
}

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
