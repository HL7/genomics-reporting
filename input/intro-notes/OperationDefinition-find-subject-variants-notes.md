### Error Codes
	
Valid response codes are shown in the following table. Additional response codes (e.g. 5xx server error) may also be encountered.

| Response Code | Description |
|---------------|-------------|
| 200 | Successfully executed request |
| 400 | ERROR: Invalid query parameters |
| 404 | ERROR: Patient not found |
| 422 | ERROR: Failed [LiftOver](operations.html#liftover) |
{:.grid}

### Examples

Patient HG00403 has WES of a tumor biopsy specimen. See if patient HG00403 had any simple somatic variants detected in BRAF (NC_000007.14:140713327-140924929) or ERBB2 (NC_000017.11:39688093-39728660) by test1.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-subject-variants?subject=HG00403&ranges=NC_000007.14:140713327-140924929,NC_000017.11:39688093-39728660&testIdentifiers=test1&genomicSourceClass=somatic&includeVariants=true
</pre>

See [example output](Parameters-FindSubjectVariantsOutput.html).
