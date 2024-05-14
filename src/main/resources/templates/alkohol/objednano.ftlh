[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Obchůdek pro mlsné jazýčky: alkohol</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <div class="kosik">
        <h1>Objednávka</h1>
        <div>Objednávka s číslem <strong>${kod}</strong> byla vytvořena.
            [#if email??]
                Na e-mail ${email} byla zaslána rekapitulace objednávky.
            [/#if]
        </div>
    </div>
</div>
</body>
</html>
