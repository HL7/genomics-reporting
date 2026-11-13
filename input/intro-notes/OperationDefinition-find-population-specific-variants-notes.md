#### Error Codes
	
Valid response codes are shown in the following table. Additional response codes (e.g. 5xx server error) may also be encountered.

| Response Code | Description |
|---------------|-------------|
| 200 | Successfully executed request |
| 400 | ERROR: Invalid query parameters |
| 404 | ERROR: Group not found |
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

The oncologist is also screening for a clinical trial, and wants to know how many patients enrolled in the trial cohort (represented as FHIR Group 'breast-cancer-trial-cohort') have **ANY** of these variants, along with the list of those patients. The returned denominator is the number of members in the group, and only group members are counted and listed.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-population-specific-variants?variants=NC_000010.10:g.121551307G>A,NC_000011.10:g.8263343T>C,NC_000001.10:g.198742263G>A&group=breast-cancer-trial-cohort&includePatientList=true
</pre>

See [example output](Parameters-FindPopulationSpecificVariantsGroupOutput.html).
