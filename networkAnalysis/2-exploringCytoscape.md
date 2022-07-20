## Part II: Exploring Cytoscape
### A visual step-by-step guide, starting from a TSV file with node,s, edges, and descriptive data

In the previous tutorial we worked from an XML (TEI) based digital edition to pull network data using XQuery. 
We have [a text file formatted as a TSV](network/sonnetsNA.tsv) for output that we are working with. 

Now we turn our attention to exploring and processing the network data


### 1. Import a table file to Cytoscape 
<img width="500" src="images/1-cytoImportFile.png" alt="Import a table file to Cytsocape"/>

### 2. Carefully set up the Cytoscape import options: 
Usually (as is the case with our example), our first line from an XQuery pull to a TSV text file is data, not a header. Be sure to **un-select** the box that wants to use the first line as column names. 
<img width="500" src="images/2-cytoimportOptions.png" alt="Cytoscape import options"/>

### 3. Mark each column of the table import with network source, edge, target info.
<img width="500" src="images/3-cytoimportLabels.png" alt="Mark each column of the table import with network info "/>

Here we are marking the following. 
* **Source Node**
* **Source Attribute** (descriptor which we'll use for styling)
* **Edge (connector** or intersection between our source and target nodes)
* **Edge Attribute** (descriptor which we'll use for styling)
* **Target Node**
* **Target Attribute** (descriptor which we'll use for styling)
*Note: The **attribute** descriptors are not required but we find them very helpful for styling based on the rich contextual information an XML-based digital edition tends to store.*


### 4. Admire or gasp in horror at your network viz on import.
<img width="500" src="images/4-importedNetwork.png" alt="Cytoscape import options"/>
* Notice the table view of the data has "collapsed" the source and target nodes. We'll be working more with this table view.
Explore the different ways to view it: Node table, Edge table, Network table. 

* On the left is a styling pane that we will also be exploring. 

### 5. 
### 6. 
### 7. 
### 8. 
### 9. 
