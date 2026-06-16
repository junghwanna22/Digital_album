const fs = require('fs');
const path = require('path');

const outDir = path.join(__dirname, 'dist');
fs.mkdirSync(outDir, { recursive: true });

const html = `<!doctype html>
<html lang="ko">
  <head><meta charset="utf-8"><title>Digital Album</title></head>
  <body>
    <h1>Digital Album Frontend Placeholder</h1>
    <p>MVP UI will be implemented in upcoming iterations.</p>
  </body>
</html>`;

fs.writeFileSync(path.join(outDir, 'index.html'), html);
console.log('Frontend build complete:', path.join(outDir, 'index.html'));
