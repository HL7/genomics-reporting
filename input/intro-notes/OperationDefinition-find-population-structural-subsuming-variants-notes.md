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
	
A pharmacogeneticist is studying the accuracy of CYP2D6*5 (whole gene deletion) calling, and wants to compare cases where a structural variant caller indicates a whole gene deletion of CYP2D6 (NC_000022.10:42522500-42526812) against a pipeline used to report pharmacogenes.

To begin the process, the pharmacogeneticist identifies all patients that have structural variants subsuming CYP2D6.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-population-structural-subsuming-variants?ranges=NC_000022.10:42522500-42526812&includePatientList=true
</pre>

See [example output](Parameters-FindPopulationStructuralSubsumingVariantsOutput.html).
