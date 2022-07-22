# Part I: Writing XQuery to prepare data for network analysis

Here we introduce code from the [Digital Mitford project](https://digitalmitford.org) to explore intersections among different kinds of documents in the project.
One of our research quests is to explore how personal letters are connected to published fiction, poetry, and plays. This network analysis exercise will explore how a collection of Mary Russell Mitford’s sonnets connects to letters and other literary productions via its referencing of named entities (includiing persons, places, plants/animals, publications).

## Other network analysis visualizations I've made: 
Sometimes seeing examples of networks pulled from XML edition projects can provide ideas for your own networks.
In that spirit, I have prepared other network analysis visualizations from the Digital Mitford project, including these:
* A directed network of Mitford and her correspondents throughout her life: Digitla Mitford team member Kellie Donovan-Condron and I worked together to prepare this as an online slideshow some years ago:  https://www.slideshare.net/ebbondar/mary-russell-mitfords-correspondence-a-network-from-17981855 
    * We had to change the color networks to [grayscale for publication in an edited book collection](https://www.academia.edu/40233722/Modelling_Mary_Russell_Mitfords_Networks_The_Digital_Mitford_as_Collaborative_Database), *Women's Literary Networks and Romanticism: "A Tribe of Authoresses"*, eds. Andrew O. Winckles. Angela Rehbein (2018).

* [A network exploring Mary Mitford's comments on Jane Austen](https://digitalmitford.org/visual.html#JA), showing who is mentioned with her in the same paragraphs or journal entries: across letters and literary works.

* A very different network of place references in an epic poem (Thalaba the Destroyer, 1801) by Robert Southey:
    *  [a slideshow](https://slides.com/elisabeshero-bondar/thalabana)
    * [The full Thalaba network](https://ebeshero.github.io/thalaba/), together with some map visualizations.

The network analysis prepared for this workshop is entirely new for the Digital Mitford project, and allows the Mitford team to learn how Mitford's small collection of sonnets (recently encoded for the project) relates to the rest of our files. 

## Files for preparing the workshop network analysis
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

<https://raw.githubusercontent.com/DigitalMitford/DigMitCS/master/networkAnalysis/xquery/workshopStarter-sonnets-NA.xql>

Don't peek until we tell you to, but here is a finished XQuery script: 

<https://github.com/DigitalMitford/DigMitCS/blob/master/networkAnalysis/xquery/sonnets-NA.xql>

## Continue on to the next part!
We continue in [Part 2 of this workshop](2-exploringCytoscape.md) with the output TSV file to construct a network visualization using Cytoscape.
