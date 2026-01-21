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
	
CYP2D6 haplotypes?

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-haplotypes?subject=HG00403&genes=http://www.genenames.org|HGNC:2625
</pre>
	
Haplotypes that include HLA-A or HLA-B?

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-haplotypes?subject=HG00403&genes=http://www.genenames.org|HGNC:4931,http://www.genenames.org|HGNC:4932
</pre>

Patient HG00403 underwent preemptive pharmacogenomic testing. Clinician now wants to prescribe amitriptyline, but first wants to see CYP2D6 and CYP2C19 star alleles.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-subject-haplotypes?subject=HG00403&genes=http://www.genenames.org|HGNC:2625,http://www.genenames.org|HGNC:2621
</pre>

See [example output](Parameters-FindSubjectHaplotypesOutput.html).
