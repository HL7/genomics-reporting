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
	
A health plan establishes a quality assurance program aimed at ensuring that patients with NSCLC who are candidates for molecularly guided treatment are properly identified.

To investigate, the plan queries a repository to obtain a list of patients that have a therapeutic implication involving NSCLC, irrespective of variants/haplotypes/genotypes from which the implication was derived.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-population-tx-implications?conditions=http://snomed.info/sct|254637007&includePatientList=true
</pre>

See [example output](Parameters-FindPopulationTxImplicationsOutput.html).
