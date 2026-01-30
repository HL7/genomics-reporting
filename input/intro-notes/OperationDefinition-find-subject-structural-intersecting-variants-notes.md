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

Patient HG00403 has a tumor recurrence. WES of new mass (specimen1) is performed. Clinical trial inclusion criteria includes somatic EGFR exon 19 whole or partial deletions. See if patient HG00403 has a structural variant that intersects with EGFR exon 19 (NC_000007.13:55242414-55242513) in specimen1.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-subject-structural-intersecting-variants?subject=HG00403&ranges=NC_000007.13:55242414-55242513&specimenIdentifiers=specimen1&genomicSourceClass=somatic&includeVariants=true
</pre>

See [example output](Parameters-FindSubjectStructuralIntersectingVariantsOutput.html).
