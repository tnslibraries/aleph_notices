<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" omit-xml-declaration="yes"/>

<xsl:include href="funcs.xsl"/>

<xsl:template match="/">
      
<xsl:call-template name="reminder_message">
     </xsl:call-template>

    

            <!--section-01 (FREE)-->

    <xsl:for-each select="//section-01">
       <xsl:call-template name="section-01"/>
    </xsl:for-each>

    <!--section-02 (GRID)-->
    <xsl:call-template name="grid-open"/>
    <xsl:for-each select="//section-02">
       
<!--  <xsl:sort select="./z30-sub-library"/> -->
       <xsl:call-template name="section-02A"/>
    </xsl:for-each>


</xsl:template>


    <!-- START DATA -->

<xsl:template name="header">
    <xsl:call-template name="header-gen">
       <xsl:with-param name="title" select="'Returning NYU Library Materials'"/>
    </xsl:call-template>
</xsl:template>


<!--SECTION-01  (FREE)-->

<xsl:template name="section-01">


   <xsl:choose>
<!--     <xsl:when test="substring(./z302-delinq-n-1,1,9) = 'Email add'">  -->
     <xsl:when test="./z302-delinq-1 = '01'">
        <xsl:call-template name="patron-address"/>
     </xsl:when>
     <xsl:otherwise>
       <xsl:call-template name="generic-line">
         <xsl:with-param name="line" select="''"/>
       </xsl:call-template>
     </xsl:otherwise>
   </xsl:choose>
 
    
 
 
  </xsl:template>




    <!--SECTION-02  (GRID)-->



<xsl:template name="section-02A">
 
   <xsl:call-template name="start-grid"/>
 
      <xsl:choose>
             <xsl:when test="./z36-recall-type != 'recalled'">
   <xsl:call-template name="table-open"/>

        <xsl:call-template name="display-gen">
 <xsl:with-param name="width" select="'8%'"/>
       <xsl:with-param name="label" select="'Library:'"/>
       <xsl:with-param name="value" select="./z30-sub-library"/>
    </xsl:call-template>

       <xsl:call-template name="display-gen">
 <xsl:with-param name="width" select="'8%'"/>
       <xsl:with-param name="label" select="'Author:'"/>
       <xsl:with-param name="value" select="./z13-author"/>
    </xsl:call-template>

       <xsl:call-template name="display-gen">
 <xsl:with-param name="width" select="'8%'"/>
       <xsl:with-param name="label" select="'Title:'"/>
       <xsl:with-param name="value" select="./z13-title"/>
    </xsl:call-template>



    <xsl:call-template name="display-gen">
    <xsl:with-param name="width" select="'8%'"/>
	   <xsl:with-param name="label" select="'Call No:'"/>
       <xsl:with-param name="value" select="./z30-call-no"/>
    </xsl:call-template>

    <xsl:call-template name="display-gen">
    <xsl:with-param name="width" select="'8%'"/>
	   <xsl:with-param name="label" select="'Description:'"/>
       <xsl:with-param name="value" select="./z30-description"/>
    </xsl:call-template>

    <xsl:call-template name="display-gen">
    <xsl:with-param name="width" select="'8%'"/>
	   <xsl:with-param name="label" select="'Barcode:'"/>
       <xsl:with-param name="value" select="./z30-barcode"/>
</xsl:call-template>
    <xsl:call-template name="display-gen">
    <xsl:with-param name="width" select="'8%'"/>
	   <xsl:with-param name="label" select="'Due Date:'"/>
       <xsl:with-param name="value" select="./z36-due-date"/>

 </xsl:call-template>
  <xsl:call-template name="generic-line">
         <xsl:with-param name="line" select="''"/>
       </xsl:call-template>                
	   
	   </xsl:when>
  
  
                 <xsl:otherwise>
 	<xsl:call-template name="table-open"/>
	
	        <xsl:call-template name="display-gen">
 <xsl:with-param name="width" select="'8%'"/>
       <xsl:with-param name="label" select="'Item Recalled:'"/>
       <xsl:with-param name="value" select="'This item has been recalled and may not be renewed.  Please return as soon as possible'"/>
    </xsl:call-template>	

    <xsl:call-template name="display-gen">
    <xsl:with-param name="width" select="'8%'"/>
	   <xsl:with-param name="label" select="'New Due Date:'"/>
       <xsl:with-param name="value" select="./z36-due-date"/>
	</xsl:call-template>

	        <xsl:call-template name="display-gen">
 <xsl:with-param name="width" select="'8%'"/>
       <xsl:with-param name="label" select="'Library:'"/>
       <xsl:with-param name="value" select="./z30-sub-library"/>
    </xsl:call-template>

       <xsl:call-template name="display-gen">
 <xsl:with-param name="width" select="'8%'"/>
       <xsl:with-param name="label" select="'Author:'"/>
       <xsl:with-param name="value" select="./z13-author"/>
    </xsl:call-template>

       <xsl:call-template name="display-gen">
 <xsl:with-param name="width" select="'8%'"/>
       <xsl:with-param name="label" select="'Title:'"/>
       <xsl:with-param name="value" select="./z13-title"/>
    </xsl:call-template>



    <xsl:call-template name="display-gen">
    <xsl:with-param name="width" select="'8%'"/>
	   <xsl:with-param name="label" select="'Call No:'"/>
       <xsl:with-param name="value" select="./z30-call-no"/>
    </xsl:call-template>

    <xsl:call-template name="display-gen">
    <xsl:with-param name="width" select="'8%'"/>
	   <xsl:with-param name="label" select="'Description:'"/>
       <xsl:with-param name="value" select="./z30-description"/>
    </xsl:call-template>

    <xsl:call-template name="display-gen">
    <xsl:with-param name="width" select="'8%'"/>
	   <xsl:with-param name="label" select="'Barcode:'"/>
       <xsl:with-param name="value" select="./z30-barcode"/>
</xsl:call-template>

	
	 <xsl:call-template name="generic-line">
         <xsl:with-param name="line" select="''"/>
       </xsl:call-template>
				 </xsl:otherwise>
       </xsl:choose>




   <xsl:call-template name="table-end-row"/>
   </xsl:template>

<xsl:template name="reminder_message">

       
	<pre STYLE="font-size: 12pt; font-family: Arial">
Hello <xsl:value-of select="printout/section-01/patron_name"/>,

You recently received an automated notification about NYU library materials about to become due.
 
Please take a moment to review our updated guidance on returning materials:
<a href="https://library.nyu.edu/services/borrowing/nyu/returning/">https://library.nyu.edu/services/borrowing/nyu/returning/</a>

 <ul>
  <li>Multiple on-site locations are available for in-person drop off with social distancing. The daily screener is <b>NOT</b> required to access the book drops.</li>
  <li>You can also return your materials by mailing them to the following address: 
  NYU Bobst Library
  ATTN: RMLL2-33
  70 Washington Sq. South 
  New York, NY 10012</li>
  <li>We have temporarily suspended fines for overdue materials.</li>
  <li>Overdue items will not affect your eligibility to graduate or be reported to the Bursars office, but you may not be able to place new requests while the loans are outstanding.</li>
</ul> 

<br></br>
<b>We can help you with a return plan.</b>
<br></br>
Including a copy of your overdue notice in your email will help our staff review your account.
<ul>
  <li>For E-ZBorrow and Interlibrary loan material  Email:<a href="lib-ill@nyu.edu">lib-ill@nyu.edu</a></li> 
<li>For General Collections materials Email:<a href="lib-circulation@nyu.edu">lib-circulation@nyu.edu</a></li>
</ul> 

<p>
Access, Delivery and Resource Sharing Services
NYU Bobst Library
70 Washington Sq. South 
New York, NY 10012
</p>
</pre>


</xsl:template>
<xsl:template name="addrs">

        <xsl:call-template name="generic-line">
       <xsl:with-param name="line" select="'If you have any questions, please contact the appropriate library at:'"/>
    </xsl:call-template>

<p>
Bobst Library Circulation Department, 212.998.2530, Email:<a href="mailto:patron.question@library.nyu.edu">patron.question@library.nyu.edu</a>

<br>Courant Institute Library, 212.998.3315, Email:<a href="mailto:cimslib@library.nyu.edu">cimslib@library.nyu.edu</a></br>

<br>Avery Fisher Center for Music and Media, 212.998.2585</br>
<br>Cooper Union Library, 212.353.4188, Email:<a href="mailto:circulation@cooper.edu">circulation@cooper.edu</a></br>
<br>The Stephen Chan Library of Fine Arts, 212.992.5825, Email:<a href="mailto:ifa.library@nyu.edu">ifa.library@nyu.edu</a></br>
<br>The New School Scherman Library, 212.580.0210  ext. 4803, Email:<a href="mailto:schermancirc@newschool.edu">schermancirc@newschool.edu</a></br>
<br>The New School Fogelman Library, 212.229.5307  ext. 3056, Email:<a href="mailto:fogelmancirc@newschool.edu">fogelmancirc@newschool.edu</a></br>
<br>The New School Gimbel Library, 212.229.8914  ext. 4121, Email:<a href="mailto:gimbelcirc@newschool.edu">gimbelcirc@newschool.edu</a></br>
<br>New York School of Interior Design Library, 212.472.1500 x214</br>
<br>Bobst Library Computing Center, 212.998.2460, Email:<a href="mailto:blcc@library.nyu.edu">blcc@library.nyu.edu</a></br></p>



</xsl:template>

</xsl:stylesheet>

<!-- Stylus Studio meta-information - (c) 2004-2008. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="yes" url="..\..\ALEPH_20_SEND_CIRC_NOTICES\COURTESY_NOTICE_FILES\WORK_TEST\test_courtesy.xml" htmlbaseurl=""
		          outputurl="..\..\ALEPH_20_SEND_CIRC_NOTICES\COURTESY_NOTICE_FILES\WORK_TEST\courtesy_notice.html" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath=""
		          additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="">
			<advancedProp name="sInitialMode" value=""/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bSchemaAware" value="true"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="iErrorHandling" value="fatal"/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->
