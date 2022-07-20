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