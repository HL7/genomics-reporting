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
	
Clinician seeks to determine if their patient has any diagnostic implications for familial hypercholesterolemia.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-dx-implications?subject=HG00403&conditions=http://snomed.info/sct|398036000
</pre>

Clinician now wants to further constrain results from the preceeding example, to only return variants in the LDLR gene (NC_000019.10:11089431-11133820) that are associated with familial hypercholesterolemia.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-dx-implications?subject=HG00403&conditions=http://snomed.info/sct|398036000&ranges=NC_000019.10:11089431-11133820
</pre>

Patient HG00403 has a germline variant in the RYR1 gene (NC_000019.10:38499669:C:T). What are the diagnostic implications of this variant? (Results indicate that the variant is pathogenic for Malignant Hyperthermia).

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-subject-dx-implications?subject=HG00403&variants=NC_000019.10:38499669:C:T
</pre>

See [example output](Parameters-FindSubjectDxImplicationsOutput.html).
