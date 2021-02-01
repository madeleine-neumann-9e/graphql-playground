const autoprefixer = require('autoprefixer');

module.exports = {
  plugins: [
    require('tailwindcss')('tailwind.config.js'),
    require('autoprefixer')
  ]
};
