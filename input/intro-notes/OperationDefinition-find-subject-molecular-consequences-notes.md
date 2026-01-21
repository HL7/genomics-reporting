#### Error Codes
	
Valid response codes are shown in the following table. Additional response codes (e.g. 5xx server error) may also be encountered.

| Response Code | Description |
|---------------|-------------|
| 200 | Successfully executed request |
| 400 | ERROR: Invalid query parameters |
| 404 | ERROR: Patient not found |
| 422 | ERROR: Failed [LiftOver](operations.html#liftover) |
{:.grid}

#### Examples
	
A patient with lung cancer has no known druggable targets. Their clinician wants to see if any variants in ALK (NC_000002.12:29190991-29921589), BRAF (NC_000007.14:140713327-140924929), or EGFR (NC_000007.14:55019016-55211628) are predicted to be consequential.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-molecular-consequences?subject=HG00403&ranges=NC_000002.12:29190991-29921589,NC_000007.14:140713327-140924929,NC_000007.14:55019016-55211628
</pre>

The clinician wants to further constrain the query in the prior example to only return variants predicted to affect splice donor sites

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-molecular-consequences?subject=HG00403&ranges=NC_000002.12:29190991-29921589,NC_000007.14:140713327-140924929,NC_000007.14:55019016-55211628&featureConsequences=http://www.sequenceontology.org|SO:0001575
</pre>

Patient HG00403 is detected as having a variant (NC_000001.10:86852620:A:G) in the ODF2L gene, and their clinician wants to further characterize the variant by examining its predicted molecular consequences. (Results indicate that the variant affects a splice donor site and can lead to gene loss of function).

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-subject-molecular-consequences?subject=HG00403&variants=NC_000001.10:86852620:A:G
</pre>

See [example output](Parameters-FindSubjectMolecConseqOutput.html).
