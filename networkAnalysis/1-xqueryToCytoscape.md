# Part I: Writing XQuery to prepare data for network analysis

Here we introduce code from the [Digital Mitford project](https://digitalmitford.org) to explore intersections among different kinds of documents in the project.
One of our research quests is to explore how personal letters are connected to published fiction, poetry, and plays. This network analysis exercise will explore how a collection of Mary Russell Mitford’s sonnets connects to letters and other literary productions via its referencing of named entities (includiing persons, places, plants/animals, publications).

All files associated with this XQuery-to-Network Analysis tutorial can be found here in the Digital Mitford Coding School repository under network-analysis: 

<https://github.com/DigitalMitford/DigMitCS/tree/master/networkAnalysis>

## Orientation to the project XML files

Inside the network analysis tutorial, I have saved a backup from the Digital Mitford project’s eXist-dB database in the mitford folder:

<https://github.com/DigitalMitford/DigMitCS/tree/master/networkAnalysis/mitford>

We can work with these files using XQuery in the &lt;oXygen XML Editor/&gt;.


## Deciding what relationships to network

Know your network analysis software and what it needs:
Cytoscape TSV import expects: 

### Source Node —TAB—  Edge Interaction  —TAB—  Target Node

...and it accepts:

### Souce Node  —TAB—  Source category/info  —TAB—  
### Edge Interaction —TAB— Edge category/info  —TAB—  
### Target Node  —TAB— Target category/info

Take a moment and give this some thought. 
What kinds of relationships in your edition data could you describe this way?


## Working out the XQuery

Let's walk through this together step-by-step in oXygen.
Here is a starter XQuery script. We'll link to the “raw” version in GitHub if you would to open it directly from GitHub (via File > Open URL, or just by downloading in your own space and reopening in oXygen): 

<>

Don't peek until we tell you to, but here is a finished XQuery script: 

<https://github.com/DigitalMitford/DigMitCS/blob/master/networkAnalysis/xquery/sonnets-NA.xql>
