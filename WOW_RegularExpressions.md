# War of Worlds Regular Expressions  
  
## Upconverting Speakers

**Document Analysis Identified Pattern:** Speakers appear at the start of a line; Speakers are all capital letters; Some speakers contain spaces
  
**Find:** `^[A-Z ]+:`  
`^` indicates start of a line  
`[A-Z ]+:` square brackets indicate a character set and in particular the range of one or more (indicated by the plus sign) upper-case letters or white spaces followed by a colon  
  
To remove the colon (pseudo-markup) when we replace the plain text with XML markup we need to surround the portion of the pattern we want to keep (the speaker names) in a capturing group.  
**Find:** `^([A-Z ]+):`  
  
**Replace:** `<speaker>\1</speaker>`  
`\1` calls on the portion in the find expression that is in the capturing group - (`[A-Z ]+`)  
  
## Upconverting Stage Directions

**Document Analysis Identified Pattern:** Stage directions appear in parentheses; stage directions are in upper-case
  
**Find:** `\([^a-z]+\)`  
`\(` and `\)` because we use parentheses in regular expressions to indicate capturing groups we need to escape the parentheses in order to grab literal parentheses in the text  
`[^a-z]+` the carot (`^`) at the start of the character set indicates not; therefore, this expression looks for one or more (indicated by the plus sign) of any character that is NOT lower-case  
  
To remove the parentheses (pseudo-markup) when we replace the plain text with XML markup we need to surround the portion of the pattern we want to keep (just the text of the stage directions) in a capturing group.  
**Find:** `\(([^a-z]+)\)`  
  
**Replace:** `<stage>\1</stage>`  
`\1` calls on the portion in the find expression that is in the capturing group - (`[^a-z]+`)  
  
## Upconverting Paragraphs in Speeches

*Attempts*  
**Find:** `^[^<]+\n\n`  
`^` indicates start of a line and `$` indicates end of line  
`\n` indicates line returns - end of line and start of next  
`[^<]+` the carot (`^`) at the start of the character set indicates not; therefore, this expression looks for one or more (indicated by the plus sign) of any character that is NOT a left angle bracket (`<`)  
**Find:** `^[^<]+?$`  
`^` indicates start of a line and `$` indicates end of line
