// vite.config.js
import { defineConfig } from 'vite';

// vite.config.js
import { defineConfig } from 'vite';

export default defineConfig({
  build: {
    lib: {
      entry: './src/index.js',
      name: 'MyVitePackage',
      fileName: (format) => `my-vite-package.${format}.js`,
    },
    rollupOptions: {
      external: [],
      output: {
        globals: {},
      },
    },
  },
  server: {
    port: 5173, // サーバのポート番号を指定
  },
});
