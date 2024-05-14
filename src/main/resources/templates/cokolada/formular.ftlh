[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Obchůdek pro mlsné jazýčky: čokoláda</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <form class="kosik" action="/cokolada" method="post">
        <h1>Objednávka čokolády</h1>
        [@spring.formSingleSelect path="form.cokolada" options={
        "": "",
        "1": "Mlecna",
        "2": "Horka",
        "3": "Bila"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="jmenoPrijmeni" class="radek">Jméno a příjmení:</label>
        [@spring.formInput path="form.jmenoPrijmeni" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.obchodniPodminky" /]
            <label for="obchodniPodminky">Souhlasím s obchodními podmínkami</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Objednat</button>
        </div>
    </form>
</div>
</body>
</html>
