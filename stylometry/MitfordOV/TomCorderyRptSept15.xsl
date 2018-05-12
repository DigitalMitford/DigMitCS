<?xml version="1.0" encoding="UTF-8"?>
<TEI xmlns="http://www.tei-c.org/ns/1.0">
   <teiHeader>
      <fileDesc>
         <titleStmt>
            <title>Report of Elements, Attributes, and Context Code</title>
            <sponsor>
               <orgName>Mary Russell Mitford Society: Digital Mitford Project</orgName>
            </sponsor>
            <sponsor>University of Pittsburgh at Greensburg</sponsor>
            <principal>Elisa Beshero-Bondar</principal>
            <respStmt>
               <resp>XSLT to prepare this report written by</resp>
               <persName ref="#ebb">Elisa Beshero-Bondar</persName>
            </respStmt>
         </titleStmt>
         <publicationStmt>
            <authority>Digital Mitford: The Mary Russell Mitford Archive</authority>
            <pubPlace>Greensburg, PA, USA</pubPlace>
            <date>2014</date>
            <availability>
               <licence>Distributed under a Creative Commons Attribution-ShareAlike 3.0
                                Unported License</licence>
            </availability>
         </publicationStmt>
         <sourceDesc>
            <p>TEI XML files coded in the Digital Mitford Archive.</p>
         </sourceDesc>
      </fileDesc>
   </teiHeader>
   <text>
      <body>
         <div type="title">
            <head>Title of this file: Our Village: Sketches of Rural Character and Scenery: Preface Digital Mitford: The Mary Russell Mitford Archive Our Village: Sketches of Rural Character and
                            Scenery</head>
         </div>
         <div type="comments">
            <head>List of all Comments Recorded in This File</head>
            <lg>
               <l>&lt;?xml-model href="http://ebeshero.github.io/MRMValidate.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?&gt;</l>
               <l> MAH: June 15, so footnotes. Not sure what we've decided to do with this, so I'm just leaving them in the text. </l>
               <l>EBB: For Mitford's footnotes, use the &lt;note&gt; element inline with the text (as we've done with notes in the past). The note goes right a the point marked for insertion in the copy-text, and looks like this: &lt;note type="author" anchored="true"&gt; text of note &lt;/note&gt;.</l>
               <l>Notice, this is simpler than the sourceDesc we used in our Letters file.</l>
               <l>scw: unidentifed yet</l>
               <l>scw: no idea who or what Tray is. Context suggests a keeper of greyhounds.</l>
               <l>scw: the parish needs to be verified; probably Swallowfield rather than Shinfield.</l>
               <l>scw: This three named place will need to be taken into account in the SI</l>
               <l>scw: A grad student of mine found an interesting story about hanged murderers and a Red Lion inn that might be what MRM is referencing here. Will have to consult his sources.</l>
               <l>scw, Sept. 8, 2014: a few sketchy notes on this sketch: 
            Tom Cordery's name appears on a 
            Berkshire enclosure map from 1817 (in Box), as does the name of an Ann Cordery. They both
            apparently received allotments of land on Farley Hill Common upon the enclosure.
            The map is a little blurry, but it looks to me like Farley Hill Common isn't located
            but is indicated by a road "to Farley Hill Common," just to the right of where it reads Mag Green at the upper left.
            (I can make out a Farley Hill House, however, center top; it's reddish.) Down towards the lower right cluster of 
            grounds, near the Heckfield parish border, I can make out what looks like the word "work house." 
            (May be the same workhouse mentioned in other sketches.) I can't decipher any of the other spots that MRM refers to
            in this sketch, so either the resolution is awful or MRM is
            screening certain aspects of the locale.</l>
               <l>I did not tag every instance of the OV narrator.</l>
               <l>I did not tag buildings besides the workhouse.</l>
               <l>The &lt;placeName type="land"&gt; tags will likely have to be revised to get at the spatial/directional aspects properly, and distinguish between general and specific spaces, named/unnamed.</l>
               <l>scw: 100 Acres, Burnt Common and Poor Allotment are the same space with 3 names. This should be shown in Site index. I have shown it in the tags with corresp.</l>
               <l>scw: the foregoing are named landscapes. They could be tagged as "geog" to distinguish them from unnamed landscapes.</l>
               <l>scw: for mapping purposes, these tags may need to be distinguished more specifically.</l>
               <l>scw: the farmers, gentlemen &amp; finders in this list are the groups of people TC takes on his hunting trips, so collectives of same.</l>
               <l>scw: there should be "heath" as a plant here, but I think it won't let me add it because it is also a placeName.</l>
            </lg>
         </div>
         <div type="unclear">
            <head>List Everything Tagged with the "Unclear" Element</head>
            <lg/>
         </div>
         <div type="element_list">
            <head>List of all elements in play in the body of this file, and sort by count from most to least used.</head>
            <lg>
               <l>persName</l>
               <l> Count of this element: 55</l>
               <l>Attributes: Names and Values</l>
               <l>full: Attribute Values:
       
            
             yes</l>
               <l>instant: Attribute Values:
       
            
             false</l>
               <l>ref: Attribute Values:
       
            
             #Tom_Cordery, #OVNarrator, #Ugo_Foscolo, #myrmidons, #head_keeper, #Medusa, #May-flower, #Tray, #Lucy, #Bob_Arlott, #Jem_Serle, #Pope_Alex, #Cromwell, #Salvator_Rosa, #Tom_Corderys_wife, #overseer</l>
               <l>subtype: Attribute Values:
       
            
             int, ext</l>
               <l>type: Attribute Values:
       
            
             fict, hist, myth</l>
            </lg>
            <lg>
               <l>placeName</l>
               <l> Count of this element: 34</l>
               <l>Attributes: Names and Values</l>
               <l>corresp: Attribute Values:
       
            
             #Hundred_Acres</l>
               <l>full: Attribute Values:
       
            
             yes</l>
               <l>instant: Attribute Values:
       
            
             false</l>
               <l>ref: Attribute Values:
       
            
             #Hampshire, #heath, #hill, #forest, #M_Common, #Bow_street, #common, #inclosure, #Hundred_Acres, #Poor_Allotment, #moor, #bog, #Gallows_piece, #hollow, #pond, #road, #dingle, #stream, #pool, #sallows</l>
               <l>type: Attribute Values:
       
            
             geog, land</l>
            </lg>
            <lg>
               <l>rs</l>
               <l> Count of this element: 28</l>
               <l>Attributes: Names and Values</l>
               <l>ref: Attribute Values:
       
            
             #pollard_oak, #ivy, #woodbine, #acorns, #Tom_Cordery, #Berkshire, #farmers, #Hundred_Acres, #gentianella, #pine, #bramble, #furze, #heath, #broom, #wood, #oak_tree, #beech_tree, #elm_tree, #Scottish_fir_tree, #fern, #brushwood, #Tom_Corderys_wife</l>
               <l>subtype: Attribute Values:
       
            
             geog</l>
               <l>type: Attribute Values:
       
            
             plant, person, place, land</l>
            </lg>
            <lg>
               <l>orgName</l>
               <l> Count of this element: 18</l>
               <l>Attributes: Names and Values</l>
               <l>full: Attribute Values:
       
            
             yes</l>
               <l>instant: Attribute Values:
       
            
             false</l>
               <l>ref: Attribute Values:
       
            
             #greater_proprietors, #guardians_of_game, #great_farmers, #small_gentry, #servants, #masters, #Red_Lion, #alehouse, #squires, #farmers, #gentlemen, #finders, #two_murderers, #workhouse, #workhouse_children</l>
               <l>type: Attribute Values:
       
            
             person</l>
            </lg>
            <lg>
               <l>pb</l>
               <l> Count of this element: 13</l>
               <l>Attributes: Names and Values</l>
               <l>n: Attribute Values:
       
            
             164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176</l>
            </lg>
            <lg>
               <l>p</l>
               <l> Count of this element: 5</l>
               <l>Attributes: Names and Values</l>
               <l>part: Attribute Values:
       
            
             N</l>
            </lg>
            <lg>
               <l>said</l>
               <l> Count of this element: 4</l>
               <l>Attributes: Names and Values</l>
               <l>aloud: Attribute Values:
       
            
             unknown</l>
               <l>direct: Attribute Values:
       
            
             true</l>
               <l>who: Attribute Values:
       
            
             #head_keeper, #Tom_Cordery</l>
            </lg>
            <lg>
               <l>quote</l>
               <l> Count of this element: 2</l>
               <l>Attributes: Names and Values</l>
               <l>defective: Attribute Values:
       
            
             false</l>
            </lg>
            <lg>
               <l>soCalled</l>
               <l> Count of this element: 2</l>
            </lg>
            <lg>
               <l>div</l>
               <l> Count of this element: 1</l>
               <l>Attributes: Names and Values</l>
               <l>org: Attribute Values:
       
            
             uniform</l>
               <l>part: Attribute Values:
       
            
             N</l>
               <l>sample: Attribute Values:
       
            
             complete</l>
               <l>type: Attribute Values:
       
            
             sketch</l>
            </lg>
            <lg>
               <l>head</l>
               <l> Count of this element: 1</l>
            </lg>
         </div>
      </body>
      <back>
         <div type="hist">
            <listPerson><!--ebb: Eliminate duplicates in this list, and check each of these against the site index to see what we've already defined, and if so, whether those entries are sufficient. 
                            Break the listPerson into multiple lists as appropriate to differentiate historical people from fictional characters.
                            Fill out a new entry here to add new information and indicate if we need to make a correction to an entry. 
                            Flesh out the entries as best you can, and when you're done, paste this into the back element of your XML file.-->
               <person>
                  <persName>Bob Arlott<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Cromwell<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>head-keeper<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>his honour<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>his wife<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>I<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Jem Serle<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>keeper<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Lucy<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>May<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Mayflower<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>me<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Medusa<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>myrmidons<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>overseer<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Pope<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Salvator Rosa<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>the keeper<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Tom<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>TOM CORDERY<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Tom Cordery<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Tom's wife<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Tray<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
               <person>
                  <persName>Ugo Foscolo<surname/>
                     <forename/>
                  </persName>
                  <birth>
                     <placeName/>
                  </birth>
                  <death>
                     <placeName/>
                  </death>
                  <occupation/>
                  <note/>
               </person>
            </listPerson>
         </div>
         <div type="org">
            <listOrg>
               <org>
                  <orgName>'squires</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>&gt;greater proprietors</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>alehouse</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>children</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>farmers</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>gentlemen</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>great farmers</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>guardians of the game</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>masters</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>parish</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>rabble of finders</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>Red Lion</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>Servants</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>small gentry</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>two murderers</orgName>
                  <note/>
               </org>
               <org>
                  <orgName>workhouse</orgName>
                  <note/>
               </org>
            </listOrg>
         </div>
         <div type="place">
            <listPlace>
               <place>
                  <placeName>a bog</placeName>
               </place>
               <place>
                  <placeName>Bow-street</placeName>
               </place>
               <place>
                  <placeName>broken hollows</placeName>
               </place>
               <place>
                  <placeName>Burnt-Common</placeName>
               </place>
               <place>
                  <placeName>common</placeName>
               </place>
               <place>
                  <placeName>dark, deep pool</placeName>
               </place>
               <place>
                  <placeName>defile</placeName>
               </place>
               <place>
                  <placeName>dingle of fern and wild brushwood</placeName>
               </place>
               <place>
                  <placeName>forest</placeName>
               </place>
               <place>
                  <placeName>Hampshire</placeName>
               </place>
               <place>
                  <placeName>heath</placeName>
               </place>
               <place>
                  <placeName>high hill</placeName>
               </place>
               <place>
                  <placeName>hill</placeName>
               </place>
               <place>
                  <placeName>Hundred Acres</placeName>
               </place>
               <place>
                  <placeName>large pond</placeName>
               </place>
               <place>
                  <placeName>large wild
                        inclosures</placeName>
               </place>
               <place>
                  <placeName>M. Common</placeName>
               </place>
               <place>
                  <placeName>moor</placeName>
               </place>
               <place>
                  <placeName>moor-land</placeName>
               </place>
               <place>
                  <placeName>place</placeName>
               </place>
               <place>
                  <placeName>Poor Allotment</placeName>
               </place>
               <place>
                  <placeName>road</placeName>
               </place>
               <place>
                  <placeName>sallows</placeName>
               </place>
               <place>
                  <placeName>shallow, sullen
                            stream</placeName>
               </place>
               <place>
                  <placeName>steep abrupt hill</placeName>
               </place>
               <place>
                  <placeName>the Gallows-piece</placeName>
               </place>
               <place>
                  <placeName>the hill</placeName>
               </place>
               <place>
                  <placeName>the Hundred Acres,</placeName>
               </place>
               <place>
                  <placeName>wild hill side</placeName>
               </place>
            </listPlace>
         </div>
         <div type="bibl">
            <listBibl><!--ebb; This collects contents of bibl elements. 
                   The next listBibl collects contents of title elements.--></listBibl>
            <listBibl/>
         </div>
         <div type="event">
            <listEvent type="event"/>
            <listEvent type="letter"/>
            <listEvent type="letter" subtype="received"/>
         </div>
      </back>
   </text>
</TEI>
