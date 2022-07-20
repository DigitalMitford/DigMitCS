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

#### 15. Change the background color for the Network Analysis if you wish:

<img width="700" src="images/15-stylingNABackground.png" alt="changing the background color of the network viz"/>

*Note: Cytoscape also has its own color themes for networks. Ordinarily we bypass these because color coding our infographics might be highly customized for a project.

#### 16. Changing the layout of the network
Now we use the **Layout menu** and begin exploring many different ways to organize your network in two-dimensional space. 

Take your time and explore to see what layouts help to organize your data in a way that is helpful.
Sometimes the layout gives you insights into relationships you're studying.

<img width="700" src="images/16-chooseLayoutGA-targetType.png" alt="Choosing a spatial layout for the nodes and edges in the network visualization"/>

*Here we are trying the **Group Attributes Layout** and selecting a layout that matches our Target attributes, and found it helpful to organize quite a lot of relationships. It was helpful for us to pull the nodes representing letters away from the nodes representing literary documents simply to help study the various relationships.* 

<img width="700" src="images/17-layoutGA-targetType.png" alt="This shows how the network layout changes by selecting the target type attribute"/>

#### 17. Manipulate the nodes “by hand” to make the network more legible.
You can always “pull out” and otherwise disentangle nodes to make them easier to see. 

<img width="700" src="images/18-pullOut-layoutGA-targetType.png" alt="Pulling out some of the nodes by hand to make them easier to read."/>

*Note: You can also annotate the network viz. Try right-clicking in the space near to something you want to highlight, and find the text annotation fields and options. 

#### 18. Changing the scale of the network viz

Try the Layout Tools on the bottom left in the Styling Pane to alter the scale of the entire network graph.

<img width="700" src="images/19-scalingLayout.png" alt="Changing the scale of the entire network graph."/>

<hr/>

### Creating Subnetworks from a large, complex network
One of the most helpful things to do with a large and complex network visualization is to create sub-networks to isolate particularly interesting nodes and their immediate neighbors. 

#### 19. Select a particular node and its adjacent edges

* First, select a node or a few nodes by clicking on them in the graph, or by selecting them on your Node table. 
* Then, use the Select menu, choose Edges, and on the submenu go to the bottom and choose, “Select Adjacent Edges”
* 
<img width="700" src="images/20-selectNodeAdjEdges.png" alt="Selecting adjacent edges to a node already selected."/>

#### 20. Now, select the neighbors on the other side of the edge connections.

<img width="700" src="images/21-selectNodesbySelectEdges.png" alt="Selecting nodes connected by selected edges."/>


#### 21. Create a subnetwork from the selection.
Find the icon near the top center to create new network from the selection.
<img width="700" src="images/22-newSubNetwork.png" alt="Creating a new subnetwork"/>

When prompted, choose to create the subnetwork only from the selected edges:

<img width="700" src="images/23-newSubNet-SelectedEdge.png" alt="Creating a new subnetwork limited to selected edges"/>


#### 22. Redo the layout for your new subnetwork.

The subnetwork will come out with all the nodes and edges in their position from the original network. You'll want to modify that, so you can return to the Layout menu and try out the options, or even redo the same layout, which will now be optimized for the smaller selection of nodes. 

<img width="700" src="images/24-subNetLayoutRedo.png" alt="Revising the layout for the subnetwork"/>

#### 23. Moving between multiple subnetworks 
Don’t worry about losing the main network when you create a subnetwork. Cytoscape’s Network pane (in the Styling panel on the left) helps you to see the main network and any subnetworks you create in a nested hierarchy. 


<img width="700" src="images/25-newSubNet-allNets.png" alt="Navigating between main network and subnetworks"/>

Here are two more subnetworks we created to show how you can start a subnetwork from target nodes:

* a very tiny subnetwork between the headnote of a play and three sonnets 
<img width="700" src="images/26-tinySubNet.png" alt="a very tiny subnetwork"/>

* a subnetwork starting from a letter to show connected sonnets: 
<img width="700" src="images/27-letterSubNet.png" alt="a network from a letter to several sonnets"/>

<hr/>

## Exporting your visualizations from Cytoscape

<img width="700" src="images/28-exportToImage.png" alt="Cytoscape’s file  menu options for exporting network visualizations"/>

You can export static SVG or PNG files that represent your network styling. These will not be interactive, but can readily be used as infographics in a web-based or print project. 


<img width="700" src="images/29-exportToSVG.png" alt="Exporting an SVG from Cytoscape"/>


We prefer to output SVG for use in web-based digital edition projects. You could try opening the output SVG in a code editor to see how you might manipulate it. 


You can also explore the web outputs from Cytoscape, which do permit interaction. Here are two different web exports of our entire network, permitting visitors to tug on nodes and rearrange and explore them at will. 

* Simple Web View (only your styling): 


* Full Web View (your styling, plus lots of layout/theme options):

Of course you should also be saving your Cytoscape file session regularly. It will save with a `.cys` file extension.



## File Resources and Further Reading: 

* [Our Cytoscape session file complete with subnetworks](network/MRMsonnetsNetwork.cys)

* [An Introduction to Network Analysis and Cytoscape for XML Coders](http://ebeshero.github.io/thalaba/cytosc.html) My longer (and older) network analysis tutorial with more on the theory and history of networks. 
