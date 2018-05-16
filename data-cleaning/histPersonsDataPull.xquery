declare default element namespace "http://www.tei-c.org/ns/1.0";
let $histPeople := //listPerson[@sortKey='histPersons']
let $persons:= $histPeople//person
for $i in $persons
let $id := $i/@xml:id/string()
let $sex := $i/@sex/string()
let $names := $i/persName
let $normNames := $names/normalize-space(string())
let $joinedNames := string-join($normNames, ', ')
let $occupations := $i/occupation
let $joinedOccs := string-join($occupations/normalize-space(string()), ', ')
(:&#x9; is a tab separator. &#10; is a line-feed return. :)
return concat($id, '&#x9;', $sex, '&#x9;', $joinedNames, '&#x9;', $joinedOccs, '&#10;')