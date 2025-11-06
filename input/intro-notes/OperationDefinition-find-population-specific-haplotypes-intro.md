### Description
	
Retrieve count or list of patients having specified genotypes/haplotypes.

Population queries are designed to return a **count** of patients that match each item sought, with or without a **list** of patients matching the item(s) sought.

As described in [general guidance](operations.html#and-or-logic-in-queries), FHIR Genomics Operations do not support 'AND' logic unless stated otherwise. This particular operation supports a logical 'AND' of the 'haplotypes' parameter, specified by repeating the parameter. 'AND' logic is useful when searching for other subjects sharing a specific constellation of haplotypes, as in the following example that seeks patients having haplotype 'a' or 'b' or 'c', and haplotype 'd' or 'e' or 'f', and haplotype 'i' or 'j' or 'k':

<pre style="white-space: pre-wrap; word-wrap: break-word;">
...&haplotypes=a,b,c&haplotypes=d,e,f&haplotypes=i,j,k
</pre>
