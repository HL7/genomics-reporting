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
	
Are any of these haplotypes present [CYP2D6 *1/*5; CYP2D6 *1/*15; CYP2C19 *1/*2]?

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-specific-haplotypes?subject=HG00403&haplotypes=CYP2D6 *1/*5,CYP2D6 *1/*15,CYP2C19 *1/*2
</pre>
	
Is haplotype [HLA-A*02:302+HLA-A*23:26/HLA-A*23:39^HLA-B*44:02:13+HLA-B*49:08] present?

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-specific-haplotypes?subject=HG00403&haplotypes=http://glstring.org|hla#3.33.0#HLA-A*02:302+HLA-A*23:26/HLA-A*23:39^HLA-B*44:02:13+HLA-B*49:08
</pre>

Patient HG00403 underwent HLA typing, and clinician wants to know if there is any haplotype or genotype indication that HLA-A*23 is present.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-subject-specific-haplotypes?subject=HG00403&haplotypes=HLA-A*23
</pre>

See [example output](Parameters-FindSubjectSpecificHaplotypesOutput.html).
