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

A researcher has developed a new drug, designed for cancer patients with large deletions involving all or part of BRCA1 (NC_000017.11:43044294-43125364) or BRCA2 (NC_000013.11:32315507-32400268), and wants a list of potential clinical trial participants.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-population-structural-intersecting-variants?ranges=NC_000017.11:43044294-43125364,NC_000013.11:32315507-32400268&includePatientList=true
</pre>

See [example output](Parameters-FindPopulationStructuralIntersectingVariantsOutput.html).
