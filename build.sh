#!/bin/bash

SITE_DIR="wacala"
URL="https://www.w3schools.com/w3css/4/w3.css"
CSS="w3.css"


mkdir -p $SITE_DIR

if [ -f "$SITE_DIR/$CSS" ]; then
    echo "ya estaba"
else
    echo "descargando"
    if !curl -o "$SITE_DIR/$CSS" "$URL"; then
        echo "error"
        echo 1
    fi
    echo "hecho"
fi

cat <<EOL > $SITE_DIR/index.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Principal</title>
</head>
<body>
    <header>
        <h1>Bienvenido a Mi Sitio Web</h1>
    </header>
    <main>
        <a href="index.html">Inicio</a>
        <a href="page1.html">Página 1</a>
        <a href="page2.html">Página 2</a>
    </main>
</body>
</html>
EOL

cat <<EOL > $SITE_DIR/page1.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página 1</title>
</head>
<body>
    <header>
        <h1>Bienvenido a la Página 1</h1>
    </header>
    <main>
        <a href="index.html">Inicio</a>
        <a href="page1.html">Página 1</a>
        <a href="page2.html">Página 2</a>
    </main>
</body>
</html>
EOL

cat <<EOL > $SITE_DIR/page2.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página 2</title>
</head>
<body>
    <header>
        <h1>Bienvenido a la Página 2</h1>
    </header>
    <main>
        <a href="index.html">Inicio</a>
        <a href="page1.html">Página 1</a>
        <a href="page2.html">Página 2</a>
    </main>
</body>
</html>
EOL

echo "Sitio web creado con éxito en el directorio '$SITE_DIR'."
