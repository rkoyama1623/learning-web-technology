# hello_world

## Log in to docer container

```bash
docker compose exec html-server /bin/bash
```

## Create npm package

1. Create a directory for your project

   ```bash
   cd ~/hello_world
   npm init
   ```

2. Install the `http-server` package

   ```bash
   npm install --save-dev http-server
   ```

3. Modify the `package.json` file

   ```json
   {
     "name": "hello_world",
     "version": "1.0.0",
     "description": "## Log in to docer container",
     "main": "index.js",
     "scripts": {
       "start": "http-server .",
       "test": "echo \"Error: no test specified\" && exit 1"
     },
     "author": "",
     "license": "ISC",
     "devDependencies": {
       "http-server": "^14.1.1"
     }
   }
   ```

4. Create an `index.html` file

   ```bash
   mkdir src
   cd src
   touch index.html 
   ```

5. Edit the `index.html` file

```html
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hello World</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      margin-top: 50px;
    }

    h1 {
      color: #333;
    }

    p {
      font-size: 18px;
      color: #666;
    }

    .container {
      max-width: 600px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      background-color: #f9f9f9;
    }

    .button {
      display: inline-block;
      padding: 10px 20px;
      font-size: 16px;
      color: #fff;
      background-color: #007bff;
      border: none;
      border-radius: 5px;
      text-decoration: none;
    }

    .button:hover {
      background-color: #0056b3;
    }
  </style>
</head>

<body>
  <div class="container">
    <h1>Hello, World!</h1>
    <p>Welcome to my first web page.</p>
    <a href="#" class="button">Click Me!</a>
  </div>
</body>

</html>
```

6. Run the `http-server` command

   ```bash
   npm start
   ```
7. Access the web page

8. Modify package.json to set src/ as the root directory

```json
{
  "name": "hello_world",
  "version": "1.0.0",
  "description": "## Log in to docer container",
  "main": "index.js",
  "scripts": {
    "start": "http-server src",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "http-server": "^14.1.1"
  }
}
```
