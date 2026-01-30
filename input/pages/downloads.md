{% assign excludexml = site.data.info.excludexml | downcase | slice: 0 %}
{% assign excludejson = site.data.info.excludejson | downcase | slice: 0 %}
{% assign excludettl = site.data.info.excludettl | downcase | slice: 0 %}

Download the entire implementation guide [here](full-ig.zip)

| | | | |
|---|---|---|---|
| **Artifact Definitions** | {% unless excludexml == 'y' %}[XML](definitions.xml.zip){% endunless %} | {% unless excludejson == 'y' %}[JSON](definitions.json.zip){% endunless %} | {% unless excludettl == 'y' %}[Turtle](definitions.ttl.zip){% endunless %} |
| **Examples** | {% unless excludexml == 'y' %}[XML](examples.xml.zip){% endunless %} | {% unless excludejson == 'y' %}[JSON](examples.json.zip){% endunless %} | {% unless excludettl == 'y' %}[Turtle](examples.ttl.zip){% endunless %} |