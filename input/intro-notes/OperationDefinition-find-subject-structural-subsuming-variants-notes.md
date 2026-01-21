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

Patient HG00403 has a tumor recurrence. WES of new mass (specimen1) is performed. Clinical trial inclusion criteria includes somatic MET amplification. See if patient HG00403 has a structural variant that subsumes MET (NC_000007.14:116672195-116798386) in specimen1.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-subject-structural-subsuming-variants?subject=HG00403&ranges=NC_000007.14:116672195-116798386&specimenIdentifiers=specimen1&genomicSourceClass=somatic&includeVariants=true
</pre>

See [example output](Parameters-FindSubjectStructuralSubsumingVariantsOutput.html).
