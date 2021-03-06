<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" omit-xml-declaration="yes"/>
    
    <xsl:include href="funcs.xsl"/>
    
    <xsl:template match="/">
        
        <xsl:call-template name="reminder_message">
            
        </xsl:call-template>
        
        <!--section-01 (FREE)-->
        
        <xsl:for-each select="/printout/section-01">
            <xsl:call-template name="section-01"/>
        </xsl:for-each>
        
        <!--section-02 (GRID)-->
        <xsl:call-template name="grid-open"/>
        <xsl:for-each select="/printout/section-02">
            
            <!--  <xsl:sort select="./z30-sub-library"/> -->
            <xsl:call-template name="section-02A"/>
        </xsl:for-each>
        
        
    </xsl:template>
    
    
    <!-- START DATA -->
    
    <xsl:template name="header">
        <xsl:call-template name="header-gen">
            <xsl:with-param name="title" select="'Time to Return Your Library Materials - Billed As Lost'"/>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template name="patronName">
        <!-- <xsl:value-of select="/printout/section-01/z302-name"/> -->
        <xsl:value-of select="substring-after(/printout/section-01/z302-name,', ')" />
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
        
        <p STYLE="font-family: Arial">Hello <xsl:call-template name="patronName"/>,</p>
        
        <p STYLE="font-family: Arial">According to our records, we have been trying to contact you and we now consider items on your account 'lost'.  You will be responsible for replacement fees, fines and other costs.  Please contact us as soon as possible to resolve these outstanding library issues.</p>
        
        <ul style="font-family: Arial;padding-top:0px;margin-top:0px;padding-bottom:0px;margin-bottom:0px;">
            <li>Library materials may be returned to book drops located in the lobbies of the University Center (63 Fifth Avenue) and Arnhold Hall (55 West 13th Street) when the buildings are open. See detailed building hours here:<br /><a href="https://www.newschool.edu/about/campus-information/building-hours/">https://www.newschool.edu/about/campus-information/building-hours/</a></li>
            <li>If you are in the US but unable to return your books on campus, please email <a href="mailto:libezb@newschool.edu">libezb@newschool.edu</a> so that we can provide you with a shipping label.</li>
            <li>View a list of your checked out items and renew eligible items by visiting <a href="https://library.newschool.edu">https://library.newschool.edu</a> and selecting 'Renew items' </li>
            <li>E-ZBorrow, Inter-Library Loan and some other items cannot be renewed. Please return these by following the instructions above. </li>
        </ul>
        
        <p STYLE="font-family: Arial"><xsl:call-template name="addrs"/></p>
        
        <p STYLE="font-family: Arial;margin-bottom:0px;padding-bottom:0px;">For a list of these lost library items, please see below.</p>
    </xsl:template>
    
    <xsl:template name="addrs">
        
        <xsl:call-template name="generic-line">
            <xsl:with-param name="line" select="'Please contact The New School Libraries staff with questions or concerns at:'"/>
        </xsl:call-template>
        
        <p>
            Email: <a href="mailto:libhelp@newschool.edu">libhelp@newschool.edu</a> | Chat: <a href="https://answers.library.newschool.edu">Ask Us</a>
        </p>
        
        
        
        
    </xsl:template>
    
</xsl:stylesheet>
