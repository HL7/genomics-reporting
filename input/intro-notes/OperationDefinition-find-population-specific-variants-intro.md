### Description
	
Retrieve count or list of patients having specified variants.

Population queries are designed to return a **count** of patients that match each item sought, with or without a **list** of patients matching the item(s) sought.

As described in [general guidance](operations.html#and-or-logic-in-queries), FHIR Genomics Operations do not support 'AND' logic unless stated otherwise. This particular operation supports a logical 'AND' of the 'variants' parameter, specified by repeating the parameter. 'AND' logic is useful when searching for other subjects sharing a specific constellation of variants, as in the following example that seeks patients having variant 'a' or 'b' or 'c', and variant 'd' or 'e' or 'f', and variant 'i' or 'j' or 'k':

<pre style="white-space: pre-wrap; word-wrap: break-word;">
...&variants=a,b,c&variants=d,e,f&variants=i,j,k
</pre>
