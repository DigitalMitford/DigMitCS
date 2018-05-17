declare namespace tei="http://www.tei-c.org/ns/1.0";    
let $collection := collection('XML_Corpus')
let $teiTitles := $collection//tei:titleStmt/tei:title
let $otherTitles := $collection//head/title
let $allTitles := ($teiTitles, $otherTitles)
let $sortedTitles := sort($allTitles)
for $t in $sortedTitles 
let $playData := 
    let $tOtherRoot := $t/ancestor::xml
    let $tTEI := $t/ancestor::tei:TEI
    let $teiActs := $tTEI//tei:div[@type="act"]
    let $nonteiActs := $tOtherRoot//div[@type="act"]
    (:let $countActs := count($teiActs) +  count($nonteiActs):)
    let $allActs := ($teiActs, $nonteiActs)
    for $a at $pos in $allActs
        let $teiScenes := $a//tei:div[@type="scene"]
        let $otherScenes := $a//div[@type="scene"]
    let $scenesPerAct := count($teiScenes) + count($otherScenes)
    let $tei_speechesPerScene := $teiScenes//tei:sp
    let $other_speechesPerScene := $otherScenes//sp
    let $tei_charsPerScene :=
   if ($a/ancestor::tei:TEI//tei:titleStmt/tei:title[contains(., 'Foscari')]) then distinct-values($teiScenes//tei:speaker/normalize-space())
   else distinct-values($teiScenes//tei:sp/substring-after(@who, '#'))
    let $other_charsPerScene := distinct-values($otherScenes//speaker/normalize-space())
    let $allCharsPerScene := ($tei_charsPerScene, $other_charsPerScene)
    let $countCharsPerScene := count($allCharsPerScene)
     let $maxTEI_SpeechLengths :=
     for $s in $teiScenes//tei:sp
     let $wordCount := count($s/tokenize(normalize-space(.), ' '))
     return max($wordCount)
     
 
     let $maxOther_SpeechLengths := 
     for $s in $otherScenes//sp
     let $wordCount := count($s/tokenize(normalize-space(.), ' '))
     return max($wordCount)
     
     let $allSpeechLengths := ($maxTEI_SpeechLengths, $maxOther_SpeechLengths)
     let $LongestSpeechPerScene := max($allSpeechLengths)
(:&#x9; is a tab separator. &#10; is a line-feed character:)
return concat('Act ', $pos, '&#x9;', 'count of Scenes: ', $scenesPerAct, '&#x9;', 'count of Characters per Scene: ', $countCharsPerScene, '&#x9;', 'Longest Speech: ', $LongestSpeechPerScene, ' words',   '&#10;')

return ($t/string(), '&#10;', $playData, '______', '&#10;')

