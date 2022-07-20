# Part II: Exploring Cytoscape
## A visual step-by-step guide, starting from a TSV file with node,s, edges, and descriptive data

In the previous tutorial we worked from an XML (TEI) based digital edition to pull network data using XQuery. 
We have [a text file formatted as a TSV](network/sonnetsNA.tsv) for output that we are working with. 

Now we turn our attention to exploring and processing the network data

<hr/>
## Import and explore network statistics 

### 1. Import a table file to Cytoscape 
<img width="700" src="images/1-cytoImportFile.png" alt="Import a table file to Cytsocape"/>

### 2. Carefully set up the Cytoscape import options: 
Usually (as is the case with our example), our first line from an XQuery pull to a TSV text file is data, not a header. Be sure to **un-select** the box that wants to use the first line as column names. 

<img width="700" src="images/2-cytoimportOptions.png" alt="Cytoscape import options"/>

### 3. Mark each column of the table import with network source, edge, target info.
<img width="700" src="images/3-cytoimportLabels.png" alt="Mark each column of the table import with network info "/>

Here we are marking the following. 
* **Source Node**
* **Source Attribute** (descriptor which we'll use for styling)
* **Edge (connector** or intersection between our source and target nodes)
* **Edge Attribute** (descriptor which we'll use for styling)
* **Target Node**
* **Target Attribute** (descriptor which we'll use for styling)
*Note: The **attribute** descriptors are not required but we find them very helpful for styling based on the rich contextual information an XML-based digital edition tends to store.*


### 4. Admire or gasp in horror at your network viz on import.
<img width="700" src="images/4-importedNetwork.png" alt="network view on import"/>
* Notice the table view of the data has "collapsed" the source and target nodes. We'll be working more with this table view.
Explore the different ways to view it: Node table, Edge table, Network table. 

* On the left is a styling pane that we will also be exploring. 

### 5. Run the "Analyze Network" to calculate network statistics.
<img width="700" src="images/5-analyzeNetwork.png" alt="run Analyze network to calculate network statistics"/>

### 6. Decide whether your graph is directed or not.
<img width="700" src="images/6-directedGraphChoice.png" alt="run Analyze network to calculate network statistics"/>
This is a very important decision: Are the network relationships you are plotting meant to express cause-and-effect or direct influence of one node on another? 
You may want your source nodes to be understood as initiating relationships and the target nodes as receiving something from the source nodes.
If this is the kind of relationship you're trying to describe, mark the **directed** option.
not, you may be exploring a network of *co-occurence*, in which you simply want to express that certain phenomena (source and target nodes) show up together in the same context. 
That would be an **undirected** graph: don't mark the box!

*Note: A directed graph will make edges become arrows that run from source nodes to point to their target nodes. 

### 7. Explore the Cytoscape network table with its calculated network statistics data.

<img width="700" src="images/7-networkTable.png" alt="The Cytoscape network table with network statistics"/>

Network concepts and statistics that you may wish to explore with your data:
* **Degree**
* **Betweenness Centrality**
* **Average Shortest Path Length**

### 8. Reorganize the network table to prioritize and sort the information you care about.

<img width="700" src="images/8-reorganizedNetworkTable.png" alt="The Cytoscape network table with network statistics"/>
* Click and drag the columns around.
* Double-click on a header row to sort a column

<hr/>

## Styling a Network with Cytoscape
This does not aim to be a complete tutorial, but rather an introductory orientation to help you start exploring.

<hr/>

### Node Styling
Look for the small tabs along the bottom of the Styling Pane, and select the Node tab.

#### 9. Orientation to the Node Styling Pane. 
You must select the box for “Lock node width and height” in order to change the sizes of nodes, make them reflect network statistics such as degree or betweenness centrality.
<img width="700" src="images/9-sizingNodes.png" alt="The Cytoscape network table with network statistics."/>


#### 10. Changing node size? Try manipulating the scale with Continuous Mapping:

<img width="700" src="images/11-sizeContMapping.png" alt="Manipulating the continous mapping"/>

You can grab the “handle bars” to increase or decrease the slope for scaling the node size. Try it and see: 

<img width="700" src="images/12-contMappingEditor.png" alt="Handles for rescaling the continous mapping"/>


#### 12. Applying color to differentiate the kinds of nodes.
Remember our attribute descriptors? This is precisely where they come in handy! 
Find the column heading that you set on import, and set it in the Styling pane for Fill Color (or wherever you wish). 
Select the option for **Discrete Mapping** to select one color for each category.

<img width="700" src="images/10-coloringNodes.png" alt="Applying color."/>
<hr/>

### Edge Styling 
Now, look for the small tabs along the bottom of the Styling Pane again, and select the Edge Tab just to the right of the Node Tab. 


#### 13. Find and study the Edge Table.
<img width="700" src="images/13-edgeTable.png" alt="Introducing the Edge Table"/>
In our sample data, we imported edge attributes to categorize different kinds of connections. 
Perhaps we can color code some of the connection categories? 
Be careful of overwhelming with too much color. Perhaps some categories in our example can be sort of collapsed!
In our example, we'll be applying the same colors to any nodes that represent people. We'll use
color to distinguish major categories like people from places.

#### 14. Adding color to categorize the edges
This is much the same as what we did for color-coding nodes. 
Choose a the column from the Edge Table that represents the Edge Attribute information and apply Discrete Mapping to select one color for each category.

*Note: You can change the colors later. We'll get rid of the soft lavender here a little later in the tutorial to amplify the contrast.*

<img width="700" src="images/14-stylingEdgeTypes.png" alt="color-coding edge types using edge attributes"/>

<hr/>

### Styling the entire network visualization
Once again, look for the small tabs along the bottom of the Styling Pane, and find Network tab (to the right of the Edge tab).

#### 15. Change the background color for the Network Analysis if you like:

<img width="700" src="images/15-stylingNABackground.png" alt="changing the background color of the network viz"/>

*Note: Cytoscape also has its own color themes for networks. Ordinarily we bypass these because color coding our infographics might be highly customized for a project.

#### 16. Changing the layout of the network
Now we use the **Layout menu** and begin exploring many different ways to organize your network in two-dimensional space. 

Take your time and explore to see what layouts help to organize your data in a way that is helpful.
Sometimes the layout gives you insights into relationships you're studying.

<img width="700" src="images/16-chooseLayoutGA-targetType.png" alt="Choosing a spatial layout for the nodes and edges in the network visualization"/>

*Here we are trying the **Group Attributes Layout** and selecting a layout that matches our Target attributes, and found it helpful to organize quite a lot of relationships. It was helpful for us to pull the nodes representing letters away from the nodes representing literary documents simply to help study the various relationships.* 

<img width="700" src="images/17-layoutGA-targetType.png" alt="Introducing the Edge Table"/>



## For Further Reading: 

* [An Introduction to Network Analysis and Cytoscape for XML Coders](http://ebeshero.github.io/thalaba/cytosc.html) My longer (and older) network analysis tutorial with more on the theory and history of networks. 
