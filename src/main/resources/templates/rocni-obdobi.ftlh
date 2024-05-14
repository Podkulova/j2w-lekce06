[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Roční období</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<main>
    <header>Minule bylo vybráno: ${form.oblibene?join(", ")}</header>

    <form action="/rocni-obdobi" method="post">
        <div>
            <input type="checkbox" id="oblibene.jaro" name="oblibene" value="JARO" [#if form.oblibene?seq_contains("JARO")]checked[/#if] >
            <label for="oblibene.jaro">jaro</label>
        </div>
        <div>
            <input type="checkbox" id="oblibene.leto" name="oblibene" value="LETO" [#if form.oblibene?seq_contains("LETO")]checked[/#if] >
            <label for="oblibene.leto">léto</label>
        </div>
        <div>
            <input type="checkbox" id="oblibene.podzim" name="oblibene" value="PODZIM" [#if form.oblibene?seq_contains("PODZIM")]checked[/#if] >
            <label for="oblibene.podzim">podzim</label>
        </div>
        <div>
            <input type="checkbox" id="oblibene.zima" name="oblibene" value="ZIMA" [#if form.oblibene?seq_contains("ZIMA")]checked[/#if] >
            <label for="oblibene.zima">zima</label>
        </div>
        <div>
            <button type="submit">Odeslat</button>
        </div>
    </form>
</main>
</body>
</html>
