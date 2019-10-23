import module namespace m='http://www.tei-c.org/pm/models/letter/latex' at '/db/apps/scout/transform/letter-latex.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "class": "article",
    "section-numbers": false(),
    "font-size": "12pt",
    "styles": ["../transform/letter.css"],
    "collection": "/db/apps/scout/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)