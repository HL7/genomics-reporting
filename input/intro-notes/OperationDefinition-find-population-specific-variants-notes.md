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
	
An oncologist treating a patient with metastatic breast cancer determines the patient has the following somatic oncogenic mutations [NC_000010.10:g.121551307G>A, NC_000011.10:g.8263343T>C,  NC_000001.10:g.198742263G>A], and wants to see if there are other patients that have **ALL** of these variants.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-population-specific-variants?variants=NC_000010.10:g.121551307G>A&variants=NC_000011.10:g.8263343T>C&variants=NC_000001.10:g.198742263G>A
</pre>

See [example output](Parameters-FindALLPopulationSpecificVariantsOutput.html).	

In the same scenario, the oncologist now wants to see if there are other patients that have **ANY** of these variants.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-population-specific-variants?variants=NC_000010.10:g.121551307G>A,NC_000011.10:g.8263343T>C,NC_000001.10:g.198742263G>A
</pre>

See [example output](Parameters-FindANYPopulationSpecificVariantsOutput.html).
