// vite.config.js
export default {
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
  };
