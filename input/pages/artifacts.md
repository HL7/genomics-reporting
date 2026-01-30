This page provides a list of the FHIR artifacts defined as part of this implementation guide.

<!-- use this SQL to get additional details about the artifacts, in particular the Description which is needed for some of the tables -->
{% sqlToData resourceOutput
  SELECT Type, Web, Id, Url, Name, Title, Description, base from Resources
%}

### Abstract Profiles
These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. That is, instances can conform to profiles based on these abstract profiles but do not declare conformance to the abstract profiles themselves.

{% assign profiles = site.data.structuredefinitions | where: "kind", "resource" | where: "abstract", true | sort: "title" %}

<table class="grid">
<thead>
<tr>
<th>Profile</th>
<th>Base</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
{% for sd in profiles %}
<tr>
<td><a href="{{sd.path}}">{{sd.title}}</a></td>
<td><a href="{{sd.basepath}}">{{sd.basename}}</a></td>
<td>{{sd.type}}</td>
<td>{{sd.description}}</td>
</tr>
{% endfor %}
</tbody>
</table>


### Resource Profiles
These define constraints on FHIR resources for systems conforming to this implementation guide.

{% assign profiles = site.data.structuredefinitions | where: "kind", "resource" | where: "abstract", false | sort: "title" %}

<table class="grid">
<thead>
<tr>
<th>Profile</th>
<th>Base</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
{% for sd in profiles %}
<tr>
<td><a href="{{sd.path}}">{{sd.title}}</a></td>
<td><a href="{{sd.basepath}}">{{sd.basename}}</a></td>
<td>{{sd.type}}</td>
<td>{{sd.description}}</td>
</tr>
{% endfor %}
</tbody>
</table>

### Data Type Profiles 
These define constraints on FHIR data types for systems conforming to this implementation guide.

{% assign profiles = site.data.structuredefinitions | where_exp: "item", "item.kind == 'complex-type' and item.type != 'Extension'" | sort: "title" %}

<table class="grid">
<thead>
<tr>
<th>Data Type</th>
<th>Base</th>
<th>Description</th>
</tr>
</thead>
<tbody>
{% for sd in profiles %}
<tr>
<td><a href="{{sd.path}}">{{sd.title}}</a></td>
<td><a href="{{sd.basepath}}">{{sd.basename}}</a></td>
<td>{{sd.description}}</td>
</tr>
{% endfor %}
</tbody>
</table>

### Extensions 
These define constraints on FHIR extensions for systems conforming to this implementation guide.

{% assign profiles = site.data.structuredefinitions | where: "type", "Extension" | sort: "title" %}

<table class="grid">
<thead>
<tr>
<th>Extension</th>
<th>Description</th>
</tr>
</thead>
<tbody>
{% for sd in profiles %}
<tr>
<td><a href="{{sd.path}}">{{sd.title}}</a></td>
<td>{{sd.description}}</td>
</tr>
{% endfor %}
</tbody>
</table>

### Code Systems
These define code systems that are used by systems conforming to this implementation guide.

{% assign codesystems = site.data.resourceOutput | where: "Type", "CodeSystem" | sort: "Title" %}

<table class="grid">
<thead>
<tr>
<th>Code System</th>
<th>Description</th>
</tr>
</thead>
<tbody>
{% for cs in codesystems %}
<tr>
<td><a href="{{cs.Web}}">{{cs.Title}}</a></td>
<td>{{cs.Description}}</td>
</tr>
{% endfor %}
</tbody>
</table>

### Value Sets
These define value sets that are used by systems conforming to this implementation guide.

{% assign valuesets = site.data.resourceOutput | where: "Type", "ValueSet" | sort: "Title" %}

<table class="grid">
<thead>
<tr>
<th>Value Set</th>
<th>Description</th>
</tr>
</thead>
<tbody>
{% for vs in valuesets %}
<tr>
<td><a href="{{vs.Web}}">{{vs.Title}}</a></td>
<td>{{vs.Description}}</td>
</tr>
{% endfor %}
</tbody>
</table>

### Concept Maps
These define mappings between code systems used by systems conforming to this implementation guide.

{% assign conceptmaps = site.data.resourceOutput | where: "Type", "ConceptMap" | sort: "Title" %}

<table class="grid">
<thead>
<tr>
<th>Concept Map</th>
<th>Description</th>
</tr>
</thead>
<tbody>
{% for cm in conceptmaps %}
<tr>
<td><a href="{{cm.Web}}">{{cm.Title}}</a></td>
<td>{{cm.Description}}</td>
</tr>
{% endfor %}
</tbody>
</table>

### Operation Definitions
These define operations that are used by systems conforming to this implementation guide.

{% assign operations = site.data.resourceOutput | where: "Type", "OperationDefinition" | sort: "Title" %}

<table class="grid">
<thead>
<tr>
<th>Operation</th>
<th>Description</th>
</tr>
</thead>
<tbody>
{% for op in operations %}
<tr>
<td><a href="{{op.Web}}">{{op.Title}}</a></td>
<td>{{op.Description}}</td>
</tr>
{% endfor %}
</tbody>
</table>

### Example Instances
These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

{% comment %}
Create a hash to group examples by profile
{% endcomment %}
{% assign examplesByProfile = "" | split: "" %}
{% assign profileNames = "" | split: "" %}

{% for artifactHash in site.data.artifacts %}
  {% assign artifact = artifactHash[0] %}
  {% assign detail = artifactHash[1] %}
  {% if detail.example %}
    {% assign exampleArray = site.data.resourceOutput | where: "Web", artifact %}
    {% assign example = exampleArray[0] %}
    {% if example %}
      {% if detail.exampleOf %}
        {% assign profileName = detail.exampleOf.name %}
      {% else %}
        {% assign profileName = "Other" %}
      {% endif %}
      
      {% unless profileNames contains profileName %}
        {% assign profileNames = profileNames | push: profileName %}
      {% endunless %}
    {% endif %}
  {% endif %}
{% endfor %}

{% assign sortedProfileNames = profileNames | sort %}
{% assign finalProfileOrder = "" | split: "" %}

{% comment %}
Add all profiles except "Other" (no profile) first
{% endcomment %}
{% for profileName in sortedProfileNames %}
  {% unless profileName == "Other" %}
    {% assign finalProfileOrder = finalProfileOrder | push: profileName %}
  {% endunless %}
{% endfor %}

{% comment %}
Add "Other" at the end if it exists
{% endcomment %}
{% if profileNames contains "Other" %}
  {% assign finalProfileOrder = finalProfileOrder | push: "Other" %}
{% endif %}

{% for profileName in finalProfileOrder %}

#### {{profileName}} Examples

{% if profileName == "Other" %}
<table class="grid">
<thead>
<tr>
<th>Example</th>
<th>Resource</th>
<th>Description</th>
</tr>
</thead>
<tbody>
{% else %}
<table class="grid">
<thead>
<tr>
<th>Example</th>
<th>Description</th>
</tr>
</thead>
<tbody>
{% endif %}
{% for artifactHash in site.data.artifacts %}
  {% assign artifact = artifactHash[0] %}
  {% assign detail = artifactHash[1] %}
  {% if detail.example %}
    {% assign exampleArray = site.data.resourceOutput | where: "Web", artifact %}
    {% assign example = exampleArray[0] %}
    {% if example %}
      {% assign currentProfileName = "Other" %}
      {% if detail.exampleOf %}
        {% assign currentProfileName = detail.exampleOf.name %}
      {% endif %}
      
      {% if currentProfileName == profileName %}
        {% if profileName == "Other" %}
<tr>
<td><a href="{{example.Web}}">{{example.Id}}</a></td>
<td>{{example.Type}}</td>
<td>{{example.Description}}</td>
</tr>
        {% else %}
<tr>
<td><a href="{{example.Web}}">{{example.Id}}</a></td>
<td>{{example.Description}}</td>
</tr>
        {% endif %}
      {% endif %}
    {% endif %}
  {% endif %}
{% endfor %}
</tbody>
</table>

{% endfor %}