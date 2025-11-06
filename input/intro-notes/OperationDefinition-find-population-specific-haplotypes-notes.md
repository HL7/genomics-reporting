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

A transplant specialist is looking for potential unrelated donors in the donor registry that are a perfect HLA match for their patient.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-population-specific-haplotypes?haplotypes=A*1&haplotypes=B*8&haplotypes=DRB1*03&haplotypes=DRB3*01&haplotypes=A*31&haplotypes=B*35&haplotypes=DRB1*04&haplotypes=DRB4*01:02&includePatientList=true
</pre>

See [example output](Parameters-FindPopulationSpecificHaplotypesOutput.html).
