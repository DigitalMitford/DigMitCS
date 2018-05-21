# Introduction to Text Encoding with XML

XML is short for **_eXtensible Markup Language_**,and it’s a standard system for storing and accessing information used practically everywhere around the world. For our purposes as researchers, it’s an excellent method for storing information, and for preparing to share it with the public.  

## XML vs HTML vs SGML

They are all *markup languages*
* markup = annotation or other marks within a text intended to instruct a compositor or typist how a particular passage should be printed or laid out
* markup language = set of markup conventions used together for encoding texts; must specify how markup is to be distinguished from text, what markup is allowed, what markup is required, and what the markup means  

XML has three highly distinctive advantages:  
* it places emphasis on descriptive rather than procedural markup;
* it distinguishes the concepts of syntactic correctness and of validity with respect to a document type definition;
* it is independent of any one hardware or software system.  

XML is frequently compared with **HTML** (*hypertext markup language*), the language in which web pages have generally been written, which shares some of the above characteristics. Compared with HTML, however, XML has some other important features:  

* XML is extensible: it does not consist of a fixed set of tags;
* XML documents must be well-formed according to a defined syntax;
* an XML document can be formally validated against a schema of some kind;
* XML is more interested in the meaning of data than in its presentation.  

The lack of structural consistency in HTML documents makes it difficult for computer programs to locate, extract or update data.  XML resolves this problem, by demanding that document authors get structure and syntax right.  

We write XML to form hierarchies (or nested structures) of information in order to locate and extract said information (whether that be for presentation as HTML, creation of data visualizations, or more simply—information searchability.)  

HTML and XML are both descendants of an earlier markup language called **SGML** (*Standard Generalized Markup Language*).  SGML is a complicated set of rules that define document structures. XML is a subset of SGML that does the same thing, using fewer rules.  Since XML is a less-complicated derivative of SGML, XML is more easily implemented on large networks such as the Internet.  The primary role of XML is to define data. XML delivers the power of SGML without the complexity.  XML does not utilize features that make the authoring difficult or costly.  Yet XML preserves most of the flexibility and richness associated with SGML.  

## Tags, Elements, and Attributes ... oh my!

![XML Element diagram](https://digitalmitford.github.io/DigMitCS/images/element.jpg)  
* A **tag** is the text between the left angle bracket (`<`) and the right angle bracket (`>`). There are starting tags and ending tags
* An **element** is the starting tag, the ending tag, and everything in between. This can include text and/or other elements.
* An **attribute** is a name-value pair inside the start tag of an element.

`<person ref="RParker" gender="female" occupation="student">Rebecca Parker</person>`

A start tag is defined with angle brackets, and an end tag looks like a start tag, except it has a forward slash after the opening angle bracket. When we talk about an element, we’re referring to the whole thing: start-tag, CONTENT, and end-tag. The element name refers to the text written inside of the start and end tags. Elements may also include something called attributes—an additional markup that gives supplementary information about an element (attributes are sort of like adjectives, or descriptive modifiers). They consist of an attribute name and an attribute value.  

In special cases, XML elements can actually have no content at all! These are called self-closing elements and they have a special syntax so that they open and close inside a single tag.  

### Self-Closing Elements

* Don't contain text or any other elements.  
* Consist of a single tag - *smush* the start and end tag together.  
* May have attributes.  

![Self-Closing XML Element diagram](https://digitalmitford.github.io/DigMitCS/images/selfClosing_element.jpg)  
  
**Why might we use self-closing elements?**  

## XML Document Structure

Elements when brought together conform to a particular hierarchy.  
  
![XML Document Box Diagram](/images/XML_BoxesInBoxes.jpg)  
Elements are boxes - Attributes distinguish box types  

![XML Document Tree Diagram](/images/XML_FamilyTree.jpg)  
Elements form trees - Reference relationships: Ancestor, Descendent, Sibling, Parent, Grandparent - XPATH walks the tree  

![Russian Nesting Dolls](/images/XML_nestingDolls.jpg)  
Elements are Russian Nesting Dolls - “Well-formedness = Nested-ness” - Everything is properly delimited, There is a single root element (“the big doll”) that contains all of the other elements both structural and contextual in nature, No elements overlap  
  
### Well-Formed
* An XML document must be contained in a single element. That single element is called the root element, and it contains all the text and any other elements in the document. 
* XML elements can't overlap - need a start and end (or self-closing)
* XML elements are case sensitive - the start and end tag must match - `<person>` vs `<PERSON>` vs `<Person>`
* Attributes must have values and those values must be enclosed within quotation marks.  

XML must be well-formed in order to be parsed by a computer.  
To be well formed:
* XML documents must have a single root element
* All elements must be properly nested
* Element and attribute tags must be written correctly  
  
But we also code XML documents for human beings wishing to work in an organized and systematic way, and for this reason, we write schema rules and we apply schema files in our projects to check our XML against the rules we create. When we check our XML files against a set of schema rules, we are checking their validity. We can use validity checks to make sure we’re spelling element names properly, writing attribute names and values consistently, and nesting elements in a way that makes sense to us that we want to hold consistent. Note: an XML document can be well formed, but not be valid; whereas, an XML document cannot be valid if it is not well formed.

### Valid
* Available vocabulary used to name elements, attributes, and attribute values. 
* Grammar for how the vocabulary is used: rules for nesting, sequencing, etc.

***

#### Resources
[NewtFire XML Introduction](http://dh.newtfire.org/explainXML.html)  
[TEI - A Gentle Introduction to XML](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/SG.html)  
[IBM developerWorks XML Tutorial](https://www.ibm.com/developerworks/xml/tutorials/xmlintro/xmlintro.html)  