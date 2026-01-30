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

See if patient HG00403 had any of these [NM_001354609.2:c.1799T>A, NM_007294.4:c.5559C>A, NC_000001.10:g.12225351T>A, NM_000038.6:c.55G>T, NM_001354609.2:c.1802=] germline variants detected by test1 or test2.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-subject-specific-variants?subject=HG00403&variants=NM_001354609.2:c.1799T>A,NM_007294.4:c.5559C>A,NC_000001.10:g.12225351T>A,NM_000038.6:c.55G>T,NM_001354609.2:c.1802=&testIdentifiers=test1,test2&genomicSourceClass=germline
</pre>

See [example output](Parameters-FindSubjectSpecificVariantsOutput.html).
