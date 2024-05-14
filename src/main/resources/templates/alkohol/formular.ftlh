[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Obchůdek pro mlsné jazýčky: alkohol</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <form class="kosik" action="/alkohol" method="post">
        <h1>Objednávka alkoholu</h1>
        <label for="zbozi" class="radek">Zboží:</label>
        [@spring.formSingleSelect path="form.zbozi" options={
        "": "",
        "1": "Veltlín – Sauvignon kabinet",
        "2": "Rulanské šedé suché",
        "3": "Modrý Portugal",
        "4": "Frisco Mojito",
        "5": "Žufánek Višňovka",
        "6": "Jägermeister"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">Objem:</div>
        <div class="skupina">
            <div>
                <input id="objem1" type="radio" name="objem" value="OBJEM_250ML"/>
                <label for="objem1">250 ml</label>
            </div>
            <div>
                <input id="objem2" type="radio" name="objem" value="OBJEM_750ML"/>
                <label for="objem2">750 ml</label>
            </div>
            <div>
                <input id="objem3" type="radio" name="objem" value="OBJEM_5L"/>
                <label for="objem3">5 litrů</label>
            </div>
        </div>
        [@spring.bind "form.objem"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="jmeno" class="radek">Jméno a příjmení:</label>
        [@spring.formInput path="form.jmeno" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="vek" class="radek">Věk:</label>
        [@spring.formInput path="form.vek" fieldType="number" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.obchodniPodminky" /]
            <label for="obchodniPodminky">Souhlasím s obchodními podmínkami</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.newsletter" /]
            <label for="newsletter">Souhlasím se zasíláním newsletterů</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Objednat</button>
        </div>
    </form>
</div>
</body>
</html>
