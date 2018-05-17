declare namespace tei="http://www.tei-c.org/ns/1.0";    
let $collection := collection('XML_Corpus')
let $teiTitles := $collection//tei:titleStmt/tei:title
let $otherTitles := $collection//head/title
return 
<root>
<teiTitles>
{$teiTitles}
</teiTitles>
<OtherTitles>
{$otherTitles}
</OtherTitles>
</root>