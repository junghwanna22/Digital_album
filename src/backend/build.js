const fs = require('fs');
const path = require('path');

const outDir = path.join(__dirname, 'dist');
fs.mkdirSync(outDir, { recursive: true });

const serverTemplate = `'use strict';\nconsole.log("Digital Album backend placeholder build artifact");\n`;
fs.writeFileSync(path.join(outDir, 'server.js'), serverTemplate);
console.log('Backend build complete:', path.join(outDir, 'server.js'));
