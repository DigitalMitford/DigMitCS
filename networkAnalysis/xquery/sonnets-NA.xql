xquery version "3.1";
declare namespace tei="http://www.tei-c.org/ns/1.0";
(:  ebb: the option declaration below is for oXygen to output a text file (and suppress the xml declaration :)
declare option saxon:output "method=text"; 
declare variable $mitfordColl := collection ('../mitford');
declare variable $lettersColl := collection('../mitford/letters');
declare variable $literaryColl := collection('../mitford/literary');
declare variable $sonnetsFile := doc('../mitford/literary/1827Sonnets_REV.xml');
declare variable $sonnetPoems := $sonnetsFile//tei:div[@type='section'];
declare variable $namedEntities := $sonnetPoems//*/@ref ! normalize-space() => distinct-values();
declare variable $tab := "&#x9;";
declare variable $linefeed := "&#10;";

declare variable $ThisFileContent := string-join( 
for $s in $sonnetPoems
let $sNumber := $s/@n ! string()
let $filetype := "sonnet"
let $label := $filetype || '-' || $sNumber
let $sTitle := $s//tei:head/tei:title ! normalize-space()
let $namedEnts := $s//*/@ref ! normalize-space() => distinct-values()
    for $e in $namedEnts
    let $eKind := ($s//*[@ref = $e])[1] ! name()
    let $fileLookups := ($lettersColl | $literaryColl)[descendant::*/@ref ! normalize-space() = $e] 
    let $filenames := $fileLookups ! base-uri() => distinct-values()
        for $f in $filenames
        let $fType := if ($f[contains(., "/letters")])
                            then "letter"
                         else "literary"
        let $fLabel := $f ! tokenize(., '/')[last()] ! substring-before(., '.xml')
        where $e != "#MRM"
        where $fLabel != "1827Sonnets_REV"
        return ($label || $tab || $filetype || $tab || $e || $tab || $eKind || $tab || $fLabel || $tab || $fType), $linefeed);
$ThisFileContent
        