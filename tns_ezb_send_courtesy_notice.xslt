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
       <xsl:with-param name="title" select="'Time to Return Your EZBorrow Materials'"/>
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

According to our records, you have materials from other libraries that are about to become due.

<p>The below E-ZBorrow material is about to become due, and cannot be renewed.</p>

<p>If you still need to use the material, place a new request at <a href="https://login.library.nyu.edu/ezborrow/ns">https://login.library.nyu.edu/ezborrow/ns</a>

</pre>

</xsl:template>

<xsl:template name="addrs">

        <xsl:call-template name="generic-line">
       <xsl:with-param name="line" select="'Please contact the Access and User Services with E-ZBorrow questions or concerns at:'"/>
    </xsl:call-template>

<p>
Email: <a href="mailto:libhelp@newschool.edu">libhelp@newschool.edu</a> | Chat: <a href="https://answers.library.newschool.edu">Ask Us</a> | Phone: <a href="tel:212-229-5307" | SMS: <a href="sms:+16464806309">646-480-6309</a>
</p>




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