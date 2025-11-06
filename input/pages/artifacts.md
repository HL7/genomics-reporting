This page provides a list of the FHIR artifacts defined as part of this implementation guide.This page provides a list of the FHIR artifacts defined as part of this implementation guide.



<!-- use this SQL to get additional details about the artifacts, in particular the Description which is needed for some of the tables --><!-- use this SQL to get additional details about the artifacts, in particular the Description which is needed for some of the tables -->

{% sqlToData resourceOutput{% sqlToData resourceOutput

  SELECT Type, Web, Id, Url, Name, Title, Description, base from Resources  SELECT Type, Web, Id, Url, Name, Title, Description, base from Resources

%}%}



### Abstract Profiles### Abstract Profiles

These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. That is, instances can conform to profiles based on these abstract profiles but do not declare conformance to the abstract profiles themselves.These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. That is, instances can conform to profiles based on these abstract profiles but do not declare conformance to the abstract profiles themselves.

{% assign profiles = site.data.structuredefinitions | where: "kind", "resource" | where: "abstract", true | sort: "title" %}

<table class="grid">{% assign profiles = site.data.structuredefinitions | where: "kind", "resource" | where: "abstract", true | sort: "title" %}

<thead>

<tr><table class="grid">

<th>Profile</th><thead>

<th>Base</th><tr>

<th>Type</th><th>Profile</th>

<th>Description</th><th>Base</th>

</tr><th>Type</th>

</thead><th>Description</th>

<tbody></tr>

{% for sd in profiles %}</thead>

<tr><tbody>

<td><a href="{{sd.path}}">{{sd.title}}</a></td>{% for sd in profiles %}

<td><a href="{{sd.basepath}}">{{sd.basename}}</a></td><tr>

<td>{{sd.type}}</td><td><a href="{{sd.path}}">{{sd.title}}</a></td>

<td>{{sd.description}}</td><td><a href="{{sd.basepath}}">{{sd.basename}}</a></td>

</tr><td>{{sd.type}}</td>

{% endfor %}<td>{{sd.description}}</td>

</tbody></tr>

</table>{% endfor %}

</tbody>

</table>

### Resource Profiles

These define constraints on FHIR resources for systems conforming to this implementation guide.

### Resource Profiles

{% assign profiles = site.data.structuredefinitions | where: "kind", "resource" | where: "abstract", false | sort: "title" %}These define constraints on FHIR resources for systems conforming to this implementation guide.

<table class="grid">

<thead>{% assign profiles = site.data.structuredefinitions | where: "kind", "resource" | where: "abstract", false | sort: "title" %}

<tr>

<th>Profile</th><table class="grid">

<th>Base</th><thead>

<th>Type</th><tr>

<th>Description</th><th>Profile</th>

</tr><th>Base</th>

</thead><th>Type</th>

<tbody><th>Description</th>

{% for sd in profiles %}</tr>

<tr></thead>

<td><a href="{{sd.path}}">{{sd.title}}</a></td><tbody>

<td><a href="{{sd.basepath}}">{{sd.basename}}</a></td>{% for sd in profiles %}

<td>{{sd.type}}</td><tr>

<td>{{sd.description}}</td><td><a href="{{sd.path}}">{{sd.title}}</a></td>

</tr><td><a href="{{sd.basepath}}">{{sd.basename}}</a></td>

{% endfor %}<td>{{sd.type}}</td>

</tbody><td>{{sd.description}}</td>

</table></tr>

{% endfor %}

### Data Type Profiles </tbody>

These define constraints on FHIR data types for systems conforming to this implementation guide.</table>



{% assign profiles = site.data.structuredefinitions | where_exp: "item", "item.kind == 'complex-type' and item.type != 'Extension'" | sort: "title" %}### Data Type Profiles 

<table class="grid">These define constraints on FHIR data types for systems conforming to this implementation guide.

<thead>

<tr>{% assign profiles = site.data.structuredefinitions | where_exp: "item", "item.kind == 'complex-type' and item.type != 'Extension'" | sort: "title" %}

<th>Data Type</th>

<th>Base</th><table class="grid">

<th>Description</th><thead>

</tr><tr>

</thead><th>Data Type</th>

<tbody><th>Base</th>

{% for sd in profiles %}<th>Description</th>

<tr></tr>

<td><a href="{{sd.path}}">{{sd.title}}</a></td></thead>

<td><a href="{{sd.basepath}}">{{sd.basename}}</a></td><tbody>

<td>{{sd.description}}</td>{% for sd in profiles %}

</tr><tr>

{% endfor %}<td><a href="{{sd.path}}">{{sd.title}}</a></td>

</tbody><td><a href="{{sd.basepath}}">{{sd.basename}}</a></td>

</table><td>{{sd.description}}</td>

</tr>

### Extension Profiles {% endfor %}

These define constraints on FHIR extensions for systems conforming to this implementation guide.</tbody>

</table>

{% assign profiles = site.data.structuredefinitions | where: "type", "Extension" | sort: "title" %}

### Extension Profiles 

<table class="grid">These define constraints on FHIR extensions for systems conforming to this implementation guide.

<thead>

<tr>{% assign profiles = site.data.structuredefinitions | where: "type", "Extension" | sort: "title" %}

<th>Extension</th>

<th>Description</th><table class="grid">

</tr><thead>

</thead><tr>

<tbody><th>Extension</th>

{% for sd in profiles %}<th>Description</th>

<tr></tr>

<td><a href="{{sd.path}}">{{sd.title}}</a></td></thead>

<td>{{sd.description}}</td><tbody>

</tr>{% for sd in profiles %}

{% endfor %}<tr>

</tbody><td><a href="{{sd.path}}">{{sd.title}}</a></td>

</table><td>{{sd.description}}</td>

</tr>

### Code Systems{% endfor %}

These define code systems that are used by systems conforming to this implementation guide.</tbody>

</table>

{% assign codesystems = site.data.resourceOutput | where: "Type", "CodeSystem" | sort: "Title" %}

### Code Systems

<table class="grid">These define code systems that are used by systems conforming to this implementation guide.

<thead>

<tr>{% assign codesystems = site.data.resourceOutput | where: "Type", "CodeSystem" | sort: "Title" %}

<th>Code System</th>

<th>Description</th><table class="grid">

</tr><thead>

</thead><tr>

<tbody><th>Code System</th>

{% for cs in codesystems %}<th>Description</th>

<tr></tr>

<td><a href="{{cs.Web}}">{{cs.Title}}</a></td></thead>

<td>{{cs.Description}}</td><tbody>

</tr>{% for cs in codesystems %}

{% endfor %}<tr>

</tbody><td><a href="{{cs.Web}}">{{cs.Title}}</a></td>

</table><td>{{cs.Description}}</td>

</tr>

### Value Sets{% endfor %}

These define value sets that are used by systems conforming to this implementation guide.</tbody>

</table>

{% assign valuesets = site.data.resourceOutput | where: "Type", "ValueSet" | sort: "Title" %}

### Value Sets

<table class="grid">These define value sets that are used by systems conforming to this implementation guide.

<thead>

<tr>{% assign valuesets = site.data.resourceOutput | where: "Type", "ValueSet" | sort: "Title" %}

<th>Value Set</th>

<th>Description</th><table class="grid">

</tr><thead>

</thead><tr>

<tbody><th>Value Set</th>

{% for vs in valuesets %}<th>Description</th>

<tr></tr>

<td><a href="{{vs.Web}}">{{vs.Title}}</a></td></thead>

<td>{{vs.Description}}</td><tbody>

</tr>{% for vs in valuesets %}

{% endfor %}<tr>

</tbody><td><a href="{{vs.Web}}">{{vs.Title}}</a></td>

</table><td>{{vs.Description}}</td>

</tr>

### Concept Maps{% endfor %}

These define mappings between code systems used by systems conforming to this implementation guide.</tbody>

</table>

{% assign conceptmaps = site.data.resourceOutput | where: "Type", "ConceptMap" | sort: "Title" %}

### Concept Maps

<table class="grid">These define mappings between code systems used by systems conforming to this implementation guide.

<thead>

<tr>{% assign conceptmaps = site.data.resourceOutput | where: "Type", "ConceptMap" | sort: "Title" %}

<th>Concept Map</th>

<th>Description</th><table class="grid">

</tr><thead>

</thead><tr>

<tbody><th>Concept Map</th>

{% for cm in conceptmaps %}<th>Description</th>

<tr></tr>

<td><a href="{{cm.Web}}">{{cm.Title}}</a></td></thead>

<td>{{cm.Description}}</td><tbody>

</tr>{% for cm in conceptmaps %}

{% endfor %}<tr>

</tbody><td><a href="{{cm.Web}}">{{cm.Title}}</a></td>

</table><td>{{cm.Description}}</td>

</tr>

### Operation Definitions{% endfor %}

These define operations that are used by systems conforming to this implementation guide.</tbody>

</table>

{% assign operations = site.data.resourceOutput | where: "Type", "OperationDefinition" | sort: "Title" %}

### Operation Definitions

<table class="grid">These define operations that are used by systems conforming to this implementation guide.

<thead>

<tr>{% assign operations = site.data.resourceOutput | where: "Type", "OperationDefinition" | sort: "Title" %}

<th>Operation</th>

<th>Description</th><table class="grid">

</tr><thead>

</thead><tr>

<tbody><th>Operation</th>

{% for op in operations %}<th>Description</th>

<tr></tr>

<td><a href="{{op.Web}}">{{op.Title}}</a></td></thead>

<td>{{op.Description}}</td><tbody>

</tr>{% for op in operations %}

{% endfor %}<tr>

</tbody><td><a href="{{op.Web}}">{{op.Title}}</a></td>

</table><td>{{op.Description}}</td>

</tr>

### Parameters{% endfor %}

These define example parameters for operations used by systems conforming to this implementation guide.</tbody>

</table>

{% assign parameters = site.data.resourceOutput | where: "Type", "Parameters" | sort: "Name" %}

### Parameters

<table class="grid">These define example parameters for operations used by systems conforming to this implementation guide.

<thead>

<tr>{% assign parameters = site.data.resourceOutput | where: "Type", "Parameters" | sort: "Name" %}

<th>Parameters</th>

<th>Description</th><table class="grid">

</tr><thead>

</thead><tr>

<tbody><th>Parameters</th>

{% for param in parameters %}<th>Description</th>

<tr></tr>

<td><a href="{{param.Web}}">{{param.Name}}</a></td></thead>

<td>{{param.Description}}</td><tbody>

</tr>{% for param in parameters %}

{% endfor %}<tr>

</tbody><td><a href="{{param.Web}}">{{param.Name}}</a></td>

</table><td>{{param.Description}}</td>

</tr>

### Example Instances{% endfor %}

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.</tbody>

{% comment %}</table>

Create a hash to group examples by profile

{% endcomment %}### Example Instances

{% assign examplesByProfile = "" | split: "" %}These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

{% assign profileNames = "" | split: "" %}

{% comment %}

{% for artifactHash in site.data.artifacts %}Create a hash to group examples by profile

  {% assign artifact = artifactHash[0] %}{% endcomment %}

  {% assign detail = artifactHash[1] %}{% assign examplesByProfile = "" | split: "" %}

  {% if detail.example %}{% assign profileNames = "" | split: "" %}

    {% assign exampleArray = site.data.resourceOutput | where: "Web", artifact %}

    {% assign example = exampleArray[0] %}{% for artifactHash in site.data.artifacts %}

    {% if example %}  {% assign artifact = artifactHash[0] %}

      {% if detail.exampleOf %}  {% assign detail = artifactHash[1] %}

        {% assign profileName = detail.exampleOf.name %}  {% if detail.example %}

      {% else %}    {% assign exampleArray = site.data.resourceOutput | where: "Web", artifact %}

        {% assign profileName = "No Profile" %}    {% assign example = exampleArray[0] %}

      {% endif %}    {% if example %}

            {% if detail.exampleOf %}

      {% unless profileNames contains profileName %}        {% assign profileName = detail.exampleOf.name %}

        {% assign profileNames = profileNames | push: profileName %}      {% else %}

      {% endunless %}        {% assign profileName = "No Profile" %}

    {% endif %}      {% endif %}

  {% endif %}      

{% endfor %}      {% unless profileNames contains profileName %}

        {% assign profileNames = profileNames | push: profileName %}

{% assign sortedProfileNames = profileNames | sort %}      {% endunless %}

{% assign finalProfileOrder = "" | split: "" %}    {% endif %}

  {% endif %}

{% comment %}{% endfor %}

Add all profiles except "No Profile" first

{% endcomment %}{% assign sortedProfileNames = profileNames | sort %}

{% for profileName in sortedProfileNames %}{% assign finalProfileOrder = "" | split: "" %}

  {% unless profileName == "No Profile" %}

    {% assign finalProfileOrder = finalProfileOrder | push: profileName %}{% comment %}

  {% endunless %}Add all profiles except "No Profile" first

{% endfor %}{% endcomment %}

{% for profileName in sortedProfileNames %}

{% comment %}  {% unless profileName == "No Profile" %}

Add "No Profile" at the end if it exists    {% assign finalProfileOrder = finalProfileOrder | push: profileName %}

{% endcomment %}  {% endunless %}

{% if profileNames contains "No Profile" %}{% endfor %}

  {% assign finalProfileOrder = finalProfileOrder | push: "No Profile" %}

{% endif %}{% comment %}

Add "No Profile" at the end if it exists

{% for profileName in finalProfileOrder %}{% endcomment %}

{% if profileNames contains "No Profile" %}

#### {{profileName}} Examples  {% assign finalProfileOrder = finalProfileOrder | push: "No Profile" %}

{% endif %}

{% if profileName == "No Profile" %}

<table class="grid">{% for profileName in finalProfileOrder %}

<thead>

<tr>#### {{profileName}} Examples

<th>Example</th>

<th>Resource</th>{% if profileName == "No Profile" %}

<th>Description</th><table class="grid">

</tr><thead>

</thead><tr>

<tbody><th>Example</th>

{% else %}<th>Resource</th>

<table class="grid"><th>Description</th>

<thead></tr>

<tr></thead>

<th>Example</th><tbody>

<th>Description</th>{% else %}

</tr><table class="grid">

</thead><thead>

<tbody><tr>

{% endif %}<th>Example</th>

{% for artifactHash in site.data.artifacts %}<th>Description</th>

  {% assign artifact = artifactHash[0] %}</tr>

  {% assign detail = artifactHash[1] %}</thead>

  {% if detail.example %}<tbody>

    {% assign exampleArray = site.data.resourceOutput | where: "Web", artifact %}{% endif %}

    {% assign example = exampleArray[0] %}{% for artifactHash in site.data.artifacts %}

    {% if example %}  {% assign artifact = artifactHash[0] %}

      {% assign currentProfileName = "No Profile" %}  {% assign detail = artifactHash[1] %}

      {% if detail.exampleOf %}  {% if detail.example %}

        {% assign currentProfileName = detail.exampleOf.name %}    {% assign exampleArray = site.data.resourceOutput | where: "Web", artifact %}

      {% endif %}    {% assign example = exampleArray[0] %}

          {% if example %}

      {% if currentProfileName == profileName %}      {% assign currentProfileName = "No Profile" %}

        {% if profileName == "No Profile" %}      {% if detail.exampleOf %}

<tr>        {% assign currentProfileName = detail.exampleOf.name %}

<td><a href="{{example.Web}}">{{example.Id}}</a></td>      {% endif %}

<td>{{example.Type}}</td>      

<td>{{example.Description}}</td>      {% if currentProfileName == profileName %}

</tr>        {% if profileName == "No Profile" %}

        {% else %}<tr>

<tr><td><a href="{{example.Web}}">{{example.Id}}</a></td>

<td><a href="{{example.Web}}">{{example.Id}}</a></td><td>{{example.Type}}</td>

<td>{{example.Description}}</td><td>{{example.Description}}</td>

</tr></tr>

        {% endif %}        {% else %}

      {% endif %}<tr>

    {% endif %}<td><a href="{{example.Web}}">{{example.Id}}</a></td>

  {% endif %}<td>{{example.Description}}</td>

{% endfor %}</tr>

</tbody>        {% endif %}

</table>      {% endif %}

    {% endif %}

{% endfor %}  {% endif %}
{% endfor %}
</tbody>
</table>

{% endfor %}
