<?xml version="1.0" encoding="UTF-8"?>
<!--
  - Converts a FHIR IG stored as XML into a JSON file that drives the operation of the IG Publisher tool,
  -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:f="http://hl7.org/fhir">
  <xsl:param name="spec"/>
  <xsl:param name="version"/>
  <xsl:param name="license"/>
  <xsl:param name="additional"/>
  <xsl:param name="hasAdditional"/>
  <xsl:param name="additionalVersion"/>
  <xsl:param name="fhirVersion" select="/f:ImplementationGuide/f:fhirVersion/@value"/>
  <xsl:param name="snomedRelease">
    <xsl:choose>
      <xsl:when test="/f:ImplementationGuide/f:*/f:coding/f:system/@value='urn:iso:std:iso:3166'">
        <xsl:value-of select="substring(/f:ImplementationGuide/f:*/f:coding[f:system/@value='urn:iso:std:iso:3166']/f:code/@value, 1, 2)"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="/f:ImplementationGuide/f:*/f:coding[f:system/@value='http://unstats.un.org/unsd/methods/m49/m49.htm']/f:code/@value"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <xsl:param name="excludexml" select="'No'"/>
  <xsl:param name="excludejson" select="'No'"/>
  <xsl:param name="excludettl" select="'No'"/>
  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
  <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'"/>
  <xsl:variable name="includeXml" select="not(translate(substring($excludexml,1,1), $uppercase, $lowercase)='y')"/>
  <xsl:variable name="includeJson" select="not(translate(substring($excludejson,1,1), $uppercase, $lowercase)='y')"/>
  <xsl:variable name="includeTtl" select="not(translate(substring($excludettl,1,1), $uppercase, $lowercase)='y')"/>
  <xsl:variable name="realm">
    <xsl:choose>
      <xsl:when test="$snomedRelease='001'">uv</xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="translate($snomedRelease, $uppercase, $lowercase)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:template match="/f:ImplementationGuide">
    <xsl:variable name="snomedReleaseNumber">
      <xsl:choose>
        <xsl:when test="$snomedRelease='AU'">32506021000036107</xsl:when>
        <xsl:when test="$snomedRelease='CA'">20611000087101</xsl:when>
        <xsl:when test="$snomedRelease='DK'">554471000005108</xsl:when>
        <xsl:when test="$snomedRelease='ES'">449081005</xsl:when>
        <xsl:when test="$snomedRelease='NL'">11000146104</xsl:when>
        <xsl:when test="$snomedRelease='SE'">45991000052106</xsl:when>
        <xsl:when test="$snomedRelease='UK'">999000041000000102</xsl:when>
        <xsl:when test="$snomedRelease='US'">731000124108</xsl:when>
        <xsl:when test="$snomedRelease='001'">900000000000207008</xsl:when>
        <xsl:otherwise>
          <xsl:message terminate="yes">
            <xsl:value-of select="concat('ERROR: Unsupported snomedRelease: ', $snomedRelease)"/>
          </xsl:message>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:text>{
  "DO_NOT_EDIT_THIS_FILE": "This file is generated.  Any edits made will be overwritten",
  "tool": "jekyll",
  "logging": ["html"],</xsl:text>
  <xsl:if test="$hasAdditional='Y'">
    <xsl:value-of select="concat('&#xa;  &quot;nestedIgConfig&quot;:&quot;', f:id/@value, $additionalVersion, '.json&quot;,')"/>
    <xsl:value-of select="concat('&#xa;  &quot;nestedIgOutput&quot;:&quot;', $additionalVersion, '&quot;,')"/>
    <xsl:text>&#xa;  "igArtifactsPage":"artifacts.html",</xsl:text>
  </xsl:if>
  <xsl:text>
  "version": "</xsl:text>
    <xsl:value-of select="$fhirVersion"/>
    <xsl:text>",
  </xsl:text>
    <xsl:if test="$version!=''">
      <xsl:value-of select="concat('&quot;fixed-business-version&quot;: &quot;', $version, '&quot;,&#xa;  ')"/>
    </xsl:if>
    <xsl:text>"html-template": "template-page.html",&#xa;  </xsl:text>
    <xsl:text>"md-template": "template-page-md.html",&#xa;  </xsl:text>
    <xsl:value-of select="concat('&quot;license&quot;: &quot;', $license, '&quot;,&#xa;  ')"/>
    <xsl:variable name="address" select="substring-before(substring-after(/f:ImplementationGuide/f:url/@value, '//'), '/')"/>
    <xsl:variable name="prefix" select="substring-before($address, '.')"/>
    <xsl:variable name="suffix">
      <xsl:if test="$additional">
        <xsl:value-of select="concat('.', translate($additional, $uppercase, $lowercase))"/>
      </xsl:if>
    </xsl:variable>
    <xsl:value-of select="concat('&quot;npm-name&quot;: &quot;', f:packageId/@value, '&quot;,&#xa;  ')"/>
    <xsl:text>"paths": {&#xa;    "resources": ["resources</xsl:text>
    <xsl:if test="$additional">
      <xsl:value-of select="$additional"/>
    </xsl:if>
    <xsl:text>", "../src/resources", "../src/vocabulary", "../src/examples"],
    "pages": ["../src/images", "pages</xsl:text>
    <xsl:if test="$additional">
      <xsl:value-of select="$additional"/>
    </xsl:if>
    <xsl:text>"],
    "temp": "../temp</xsl:text>
    <xsl:if test="$additional">
      <xsl:value-of select="$additional"/>
    </xsl:if>
    <xsl:text>/pages",
    "output": "../</xsl:text>
    <xsl:choose>
      <xsl:when test="$additional">
        <xsl:value-of select="concat('temp/pages/', $additional)"/>
      </xsl:when>
      <xsl:otherwise>output</xsl:otherwise>
    </xsl:choose>
    <text>",
    "txCache": "txcache",
    "history" : "history.html",
    "qa": "../temp</text>
    <xsl:if test="$additional">
      <xsl:value-of select="$additional"/>
    </xsl:if>
    <xsl:text>/qa",
    "specification": "</xsl:text>
    <xsl:value-of select="$spec"/>
    <xsl:text>"
  },
  "suppressedWarningFile": "../src/ignoreWarnings.txt",
  "includeHeadings": false,
  "pre-process": [
    {"folder": "../framework/config",
     "relativePath": ""},&#xa;</xsl:text>
    <xsl:if test="not($additional)">    {"folder": "../framework/assets",
     "relativePath": "assets"},&#xa;</xsl:if>
    <xsl:text>    {"folder": "../framework/includes",
     "relativePath": "_includes"},
    {"folder": "../src/includes",
     "relativePath": "_includes",
     "transform": "../framework/xslt/processPages.xslt"},
    {"folder": "../src/data",
     "relativePath": "_data"},
    {"folder": "../src/pagecontent",
     "relativePath": "_includes",
     "transform": "../framework/xslt/processPages.xslt"}
  ],
  "extraTemplates": [
    {
      "name": "mappings",
      "description": "Mappings"
    },
    {
      "name": "examples",
      "description": "Examples"
    }</xsl:text>
    <xsl:if test="$includeXml">,
    {
      "name": "profile-xml",
      "description": "Profile XML"
    }</xsl:if>
    <xsl:if test="$includeJson">,
    {
      "name": "profile-json",
      "description": "Profile JSON"
    }</xsl:if>
    <xsl:if test="$includeTtl">,
    {
      "name": "profile-ttl",
      "description": "Profile Turtle"
    }</xsl:if>
    <xsl:text>
  ],
  "defaults": {
    "Any": {
      "java" : false,&#x0a;</xsl:text>
    <xsl:if test="not($includeXml)">
      <xsl:text>      "xml" : false,&#x0a;</xsl:text>
    </xsl:if>
    <xsl:if test="not($includeJson)">
      <xsl:text>      "json" : false,&#x0a;</xsl:text>
    </xsl:if>
    <xsl:if test="not($includeTtl)">
      <xsl:text>      "ttl" : false,&#x0a;</xsl:text>
    </xsl:if>
    <xsl:text>      "template-base": "../framework/templates/template-instance-base.html",
      "template-format": "../framework/templates/template-instance-format.html",
      "base": "{{[id]}}.html",
      "format": "{{[id]}}.{{[fmt]}}.html"
    },
    "ImplementationGuide": {
      "template-base": "",
      "template-format": ""
    },
    "StructureDefinition": {
      "template-base": "../framework/templates/template-profile.html",
      "template-defns": "../framework/templates/template-profile-definitions.html",
      "template-mappings": "../framework/templates/template-profile-mappings.html",
      "template-examples": "../framework/templates/template-profile-examples.html"</xsl:text>
    <xsl:if test="$includeXml">,
      "template-profile-xml": "../framework/templates/template-profile-xml.html"</xsl:if>
    <xsl:if test="$includeJson">,
      "template-profile-json": "../framework/templates/template-profile-json.html"</xsl:if>
    <xsl:if test="$includeTtl">,
      "template-profile-ttl": "../framework/templates/template-profile-ttl.html"</xsl:if>
    <xsl:text>,
      "base": "{{[id]}}.html",
      "defns": "{{[id]}}-definitions.html",
      "mappings": "{{[id]}}-mappings.html",
      "examples": "{{[id]}}-examples.html"</xsl:text>
    <xsl:if test="$includeXml">,
      "profile-xml": "{{[id]}}.profile.xml.html"</xsl:if>
    <xsl:if test="$includeJson">,
      "profile-json": "{{[id]}}.profile.json.html"</xsl:if>
    <xsl:if test="$includeTtl">,
      "profile-ttl": "{{[id]}}.profile.ttl.html"</xsl:if>
    <xsl:text>
    },
    "ValueSet": {
      "template-base": "../framework/templates/template-valueset.html",
      "template-format": "../framework/templates/template-valueset-format.html",
      "base": "valueset-{{[id]}}.html",
      "format": "valueset-{{[id]}}.{{[fmt]}}.html"
    }
  },
  "sct-edition" : "http://snomed.info/sct/</xsl:text>
    <xsl:value-of select="$snomedReleaseNumber"/>
    <xsl:text>",
  "no-inactive-codes" : "true",
  "canonicalBase": "</xsl:text>
    <xsl:value-of select="substring-before(/f:ImplementationGuide/f:url/@value, '/ImplementationGuide')"/>
    <xsl:if test="$additional">
      <xsl:value-of select="concat('/', $additional)"/>
    </xsl:if>
    <xsl:text>",&#xa;  </xsl:text>
    <xsl:if test="f:*[(self::f:dependency and f:type/@value='reference') or self::f:dependsOn][not(f:extension[@url='http://hl7.org/fhir/StructureDefinition/tools-alternateVersion'] or $additional) or (f:extension[@url='http://hl7.org/fhir/StructureDefinition/tools-alternateVersion']/f:valueCode/@value=$additional)]">
      <xsl:text>&quot;dependencyList&quot;: [&#xa;</xsl:text>
      <xsl:for-each select="f:*[(self::f:dependency and f:type/@value='reference') or self::f:dependsOn][not(f:extension[@url='http://hl7.org/fhir/StructureDefinition/tools-alternateVersion'] or $additional) or (f:extension[@url='http://hl7.org/fhir/StructureDefinition/tools-alternateVersion']/f:valueCode/@value=$additional)]">
        <xsl:variable name="code">
          <xsl:call-template name="findLast">
            <xsl:with-param name="string" select="f:uri/@value"/>
            <xsl:with-param name="split" select="'/'"/>
          </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="concat('    {&#xa;      &quot;name&quot; : &quot;', $code, '&quot;,&#xa;      &quot;version&quot; : &quot;', f:version/@value, 
        '&quot;,&#xa;      &quot;location&quot; : &quot;', f:uri/@value, 
        '&quot;,&#xa;      &quot;source&quot; : &quot;../../', $code, '2/website&quot;&#xa;    }')"/>
        <xsl:if test="position()!=last()">
          <xsl:text>,&#xa;</xsl:text>
        </xsl:if>
      </xsl:for-each>
      <xsl:text>&#xa;  ],&#xa;  </xsl:text>
    </xsl:if>
    <xsl:text>"source": "</xsl:text>
    <xsl:value-of select="f:id/@value"/>
    <xsl:text>.xml",
  "spreadsheets": [</xsl:text>
    <xsl:for-each select="//f:extension[@url='http://hl7.org/fhir/tools-profile-spreadsheet']/f:valueUri[not(f:extension[@url='http://hl7.org/fhir/StructureDefinition/tools-alternateVersion'] or $additional) or (f:extension[@url='http://hl7.org/fhir/StructureDefinition/tools-alternateVersion']/f:valueCode/@value=$additional)]">
      <xsl:if test="position()!=1">,</xsl:if>
      <xsl:value-of select="concat('&#xa;    &quot;', @value, '&quot;')"/>
    </xsl:for-each>
    <xsl:text>
  ],
  "resources": {</xsl:text>
    <xsl:for-each select="f:*[self::f:package or self::f:definition]/f:resource[not(f:extension[@url='http://hl7.org/fhir/StructureDefinition/tools-alternateVersion'] or $additional) or (f:extension[@url='http://hl7.org/fhir/StructureDefinition/tools-alternateVersion']/f:valueCode/@value=$additional)]">
      <xsl:variable name="type" select="substring-before(*[self::f:reference or self::f:sourceReference]/f:reference/@value, '/')"/>
      <xsl:variable name="id" select="substring-after(*[self::f:reference or self::f:sourceReference]/f:reference/@value, '/')"/>
      <xsl:if test="position()!=1">,</xsl:if>
      <xsl:value-of select="concat('&#xa;    &quot;', *[self::f:reference or self::f:sourceReference]/f:reference/@value, '&quot;:{&#xa;')"/>
      <xsl:if test="f:example/@value='true' or f:exampleBoolean/@value='true' or f:exampleCanonical or f:exampleReference">
        <xsl:choose>
          <xsl:when test="$type='ValueSet'">
            <xsl:text>    "template-base": "../framework/templates/template-instance-base.html",&#xa;</xsl:text>
            <xsl:text>    "template-format": "../framework/templates/template-instance-format.html",&#xa;</xsl:text>
            <xsl:text>      "base": "{{[id]}}.html",&#xa;</xsl:text>
            <xsl:text>      "format": "{{[id]}}.{{[fmt]}}.html"</xsl:text>
          </xsl:when>
          <xsl:when test="$type='StructureDefinition'">
            <xsl:text>    "template-base": "../framework/templates/template-instance-base.html",&#xa;</xsl:text>
            <xsl:text>    "template-format": "../framework/templates/template-instance-format.html",&#xa;</xsl:text>
            <xsl:text>      "template-defns": "",&#xa;</xsl:text>
            <xsl:text>      "template-mappings": "",&#xa;</xsl:text>
            <xsl:text>      "template-examples": "",&#xa;</xsl:text>
            <xsl:if test="$includeXml">      "template-profile-xml": "",&#xa;</xsl:if>
            <xsl:if test="$includeJson">      "template-profile-json": "",&#xa;</xsl:if>
            <xsl:if test="$includeTtl">      "template-profile-ttl": "",&#xa;</xsl:if>
            <xsl:text>      "base": "{{[id]}}.html",&#xa;</xsl:text>
            <xsl:text>      "format": "{{[id]}}.{{[fmt]}}.html"</xsl:text>
          </xsl:when>
        </xsl:choose>
      </xsl:if>
      <xsl:if test="not(f:example/@value='true' or f:exampleBoolean='true' or f:exampleCanonical or f:exampleFor) and (ancestor::f:ImplementationGuide//f:page[*[self::f:source or self::f:nameUrl]/@value=concat('extension-', $id, '.html')] or starts-with($id, 'ext-') or contains(f:package/@value, 'xtension') or contains(f:groupingId/@value, 'xtension')) and $type='StructureDefinition'">
        <xsl:text>      "template-base": "../framework/templates/template-ext.html",&#xa;</xsl:text>
        <xsl:text>      "template-defns": "../framework/templates/template-ext-definitions.html",&#xa;</xsl:text>
        <xsl:text>      "template-mappings": "../framework/templates/template-ext-mappings.html",&#xa;</xsl:text>
        <xsl:text>      "template-examples": "",&#xa;</xsl:text>
        <xsl:if test="$includeXml">      "template-profile-xml": "../framework/templates/template-ext-xml.html",&#xa;</xsl:if>
        <xsl:if test="$includeJson">      "template-profile-json": "../framework/templates/template-ext-json.html",&#xa;</xsl:if>
        <xsl:if test="$includeTtl">      "template-profile-ttl": "../framework/templates/template-ext-ttl.html",&#xa;</xsl:if>
        <xsl:text>      "template-format": "",&#xa;</xsl:text>
        <xsl:text>      "base": "extension-{{[id]}}.html",&#xa;</xsl:text>
        <xsl:text>      "defns": "extension-{{[id]}}-definitions.html",&#xa;</xsl:text>
        <xsl:text>      "mappings": "extension-{{[id]}}-mappings.html",&#xa;</xsl:text>
        <xsl:text>      "examples": "extension-{{[id]}}-examples.html"</xsl:text>
        <xsl:if test="$includeXml">,&#xa;      "profile-xml": "extension-{{[id]}}.profile.xml.html"</xsl:if>
        <xsl:if test="$includeJson">,&#xa;      "profile-json": "extension-{{[id]}}.profile.json.html"</xsl:if>
        <xsl:if test="$includeTtl">,&#xa;      "profile-ttl": "extension-{{[id]}}.profile.ttl.html"</xsl:if>
        <xsl:text>&#xa;</xsl:text>
      </xsl:if>
      <xsl:text>    }</xsl:text>
    </xsl:for-each>
    <xsl:text>
  }
}</xsl:text>
  </xsl:template>
  <xsl:template name="findLast">
    <xsl:param name="string"/>
    <xsl:param name="split"/>
    <xsl:choose>
      <xsl:when test="contains($string, $split)">
        <xsl:call-template name="findLast">
          <xsl:with-param name="string" select="substring-after($string, $split)"/>
          <xsl:with-param name="split" select="$split"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$string"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
