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

Over the course of the past two years, many patients have been tested for variants pathogenic for hereditary breast and ovarian cancer syndrome (HBOC), Lynch syndrome (LS), and familial hypercholesterolemia (FH).

Recent knowledge base updates have added to the list of known pathogenic variants, and have reclassified the pathogenicity of many variants.

We now want to find patients that have pathogenic variants for HBOC, LS, or FH, based on the new knowledge base.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-population-dx-implications?conditions=http://snomed.info/sct|718220008,http://snomed.info/sct|716318002,http://snomed.info/sct|398036000&includePatientList=true
</pre>

See [example output](Parameters-FindPopulationDxImplicationsOutput.html).
