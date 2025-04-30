# vite

## Log in to docker container

```bash
docker compose exec html-server /bin/bash
```

## Create npm package

1. Create a directory for your project

   ```bash
   cd ~/vite
   npm init -y
   ```

2. Install the `http-server` package

   ```bash
   npm install --save-dev vite
   ```

3. Create src/index.html

   ```bash
   mkdir src
   cd src
   touch index.js
   ```

  ```index.js
  // src/index.js
  export function greet(name) {
    return `Hello, ${name}! Welcome to Vite-powered npm package.`;
  }
  ```

4. Create `vite.config.js`

   ```vite.config.js
   // vite.config.js
   export default {
     build: {
       lib: {
         entry: './src/index.js',  // Entry point
         name: 'MyVitePackage',    // Library name
         fileName: (format) => `my-vite-package.${format}.js`,  // Output file name
       },
       rollupOptions: {
         external: [],  // Specify external dependencies
         output: {
           globals: {},  // Global variables for external dependencies
         },
       },
     },
   };
   ```

5. Modify the `package.json` file

   ```json
   ...
   "scripts": {
     "build": "vite build",
     "dev": "vite --host"
   },
   ...
   ```

6. Create an `index.html` file

   ```bash
   my-vite-package/
   ├── index.html
   ├── src/
   │   └── main.js
   ├── vite.config.js
   ├── package.json
   └── ...
   ```

7. Edit the `index.html` file

```html
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8" />
    <title>My Vite Package Test</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
    <h1>Vite パッケージ テスト</h1>
    <div id="app"></div>

    <!-- Viteがこのscriptからエントリーポイントを解決します -->
    <script type="module" src="/src/main.js"></script>
  </body>
</html>

```

6. Run the `vite` command

   ```bash
   npm start
   ```

7. Access the web page
