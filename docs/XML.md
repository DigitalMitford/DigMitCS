# Introduction to Text Encoding with XML

XML is short for **_eXtensible Markup Language_**,and it’s a standard system for storing and accessing information used practically everywhere around the world. For our purposes as researchers, it’s an excellent method for storing information, and for preparing to share it with the public. XML is independent of proprietary software applications—which means that what you write in XML is freely exchangeable between computers of different kinds—across different platforms.  

## Tags, Elements, and Attributes ... oh my!

![XML Element diagram](https://digitalmitford.github.io/DigMitCS/images/element.jpg)  
* A **tag** is the text between the left angle bracket (`<`) and the right angle bracket (`>`). There are starting tags and ending tags
* An **element** is the starting tag, the ending tag, and everything in between. This can include text and/or other elements.
* An **attribute** is a name-value pair inside the start tag of an element.

`<person ref="RParker" gender="female" occupation="student">Rebecca Parker</person>`

A start tag is defined with angle brackets, and an end tag looks like a start tag, except it has a forward slash after the opening angle bracket. When we talk about an element, we’re referring to the whole thing: start-tag, CONTENT, and end-tag. The element name refers to the text written inside of the start and end tags. Elements may also include something called attributes—an additional markup that gives supplementary information about an element (attributes are sort of like adjectives, or descriptive modifiers). They consist of an attribute name and an attribute value.  

In special cases, XML elements can actually have no content at all! These are called self-closing elements and they have a special syntax so that they open and close inside a single tag. 

### Self-Closing Elements

![Self-Closing XML Element diagram](https://digitalmitford.github.io/DigMitCS/images/selfClosing_element.jpg)  
* Don't contain text or any other elements.  
* Consist of a single tag - *smush* the start and end tag together.  
* May have attributes. 

**Why might we use self-closing elements?**

## XML vs HTML vs SGML

You’ve probably heard of **HTML** (*hypertext markup language*), which is the code that makes web pages presentable in web browsers. That’s a kind of *markup language*, designed specifically and only for presentation and publication on the world-wide web: HTML is for presentation and display, but XML is primarily for storage amd access of information. We call it informational markup, as opposed to presentational markup. Web browsers use a combined parsing and presentation engine that is tolerant of markup problems.  Sloppy markup in HTML pages is ignored or interpreted in a proprietary way that can alter between browsers.  For example, if a closing tag is omitted in an HTML document, the browser attempts to guess where the closing tag should have been.  If the browser encounters an element or attribute that it does not recognize (such as a tag supported by a different brand of browser), the tag or element is ignored. The loose, uncontrolled nature of HTML makes it impossible to predict exactly how a web page will be displayed.  Browsers attempt to render something on-screen, however odd, rather than display validation error messages. Since HTML is presentation-oriented, it uses markup tags for formatting as well as to define structure.  The complexity of HTML formatting can make it difficult to locate data in HTML documents. HTML was not originally designed to provide precise control over the layout of page elements.  To compensate, savvy page designers use tables, style sheets, etc. to control the placement of text and graphics.  This creates visually-appealing web pages at the expense of clear-cut document structures.  Complex web pages bury data in a mix of structures in the information stream.  The lack of structural consistency in HTML documents makes it difficult for computer programs to locate, extract or update data.  XML resolves this problem, by demanding that document authors get structure and syntax right.

We write XML to form hierarchies (or nested structures) of information in order to locate and extract said information (whether that be for presentation as HTML, creation of data visualizations, or more simply—information searchability.)

HTML and XML are both descendants of an earlier markup language called **SGML** (*Standard Generalized Markup Language*).  SGML is a complicated set of rules that define document structures. XML is a subset of SGML that does the same thing, using fewer rules.  Since XML is a less-complicated derivative of SGML, XML is more easily implemented on large networks such as the Internet.  The primary role of XML is to define data. XML delivers the power of SGML without the complexity.  XML does not utilize features that make the authoring difficult or costly.  Yet XML preserves most of the flexibility and richness associated with SGML.  

## XML Document Structure
Elements when brought together conform to a particular hierarchy.

![XML Document Box Diagram](https://digitalmitford.github.io/DigMitCS/images/XML_BoxesInBoxes.jpg) ![XML Document Tree Diagram](https://digitalmitford.github.io/DigMitCS/images/XML_FamilyTree.jpg) ![Russian Nesting Dolls](https://digitalmitford.github.io/DigMitCS/images/XML_nestingDolls.jpg)

* Elements are boxes - Attributes distinguish box types
* Elements form trees - Reference relationships: Ancestor, Descendent, Sibling, Parent, Grandparent - XPATH walks the tree
* Elements are Russian Nesting Dolls - “Well-formedness = Nested-ness” - Everything is properly delimited, There is a single root element (“the big doll”) that contains all of the other elements both structural and contextual in nature, No elements overlap

### Well-Formed
* An XML document must be contained in a single element. That single element is called the root element, and it contains all the text and any other elements in the document. 
* XML elements can't overlap - need a start and end (or self-closing)
* XML elements are case sensitive - the start and end tag must match - `<person>` vs `<PERSON>` vs `<Person>`
* Attributes must have values and those values must be enclosed within quotation marks.

XML must be well formed in order to be parsed by a computer. To be well formed, XML documents must have a single root element, all elements must be properly nested, and element and attribute tags must be written correctly so that a computer can parse a file as XML. But we also code XML documents for human beings wishing to work in an organized and systematic way, and for this reason, we write schema rules and we apply schema files in our projects to check our XML against the rules we create. When we check our XML files against a set of schema rules, we are checking their validity. We can use validity checks to make sure we’re spelling element names properly, writing attribute names and values consistently, and nesting elements in a way that makes sense to us that we want to hold consistent. Note: an XML document can be well formed, but not be valid; whereas, an XML document cannot be valid if it is not well formed.

### Valid
* Available vocabulary used to name elements, attributes, and attribute values. 
* Grammar for how the vocabulary is used: rules for nesting, sequencing, etc.

***
#### Resources
[NewtFire XML Introduction](http://dh.newtfire.org/explainXML.html)
[IBM developerWorks XML Tutorial](https://www.ibm.com/developerworks/xml/tutorials/xmlintro/xmlintro.html)