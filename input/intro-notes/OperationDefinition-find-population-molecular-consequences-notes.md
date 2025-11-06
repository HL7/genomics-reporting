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
	
As part of a quality assurance program, an oncologist seeks to identify patients harboring putative splice site variants in order to further assess disparities in molecularly guided treatment.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-population-molecular-consequences?&featureConsequences=http://www.sequenceontology.org|SO:0001629&includePatientList=true
</pre>

See [example output](Parameters-FindPopulationMolecConseqOutput.html).
