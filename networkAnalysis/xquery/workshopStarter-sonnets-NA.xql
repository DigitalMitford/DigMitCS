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

(: First I want to plan the structure of my data! :)

(: I have an interesting sonnet collection that references people, places, :) 
 (: and other kinds of named entities important in Mary Mitford's world of the 1810s and 1820s. :)
(: I want to find out which other documents in the project share references 
(: to these particular named entities! 

(: So, I want to make a network of documents. I want my nodes to be document labels. :)
(: I want my connecting "edges" be named entity references. That means I won't be featuring the 
named entities in this network so much as the documents. But I would like to show how documents are connected to 
each other based on what kinds of names they reference (place names? people names? plant names?) :) 


