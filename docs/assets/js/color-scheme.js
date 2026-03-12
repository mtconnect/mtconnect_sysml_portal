document.addEventListener('DOMContentLoaded', function () {
  // Set initial theme
  if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
    jtd.setTheme('dark');
  } else {
    jtd.setTheme('light');
  }

  // Listen for OS-level changes
  window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', function (e) {
    jtd.setTheme(e.matches ? 'dark' : 'light');
  });
});
