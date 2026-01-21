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
	
Clinician seeks to determine if their patient has any potential drug-gene interactions based on the presence of their patient's CYP2C19 *1/*2 genotype.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-tx-implications?subject=HG00403&haplotypes=CYP2C19 *1/*2
</pre>

Clinician is considering the use of clopidogrel, and seeks to determine if their patient has any potential drug-gene interactions that might affect clopidogrel efficacy.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-tx-implications?subject=HG00403&treatments=http://www.nlm.nih.gov/research/umls/rxnorm|32968
</pre>

Clinician is considering treatment options for a 66 year old non-smoker recently diagnosed with metastatic non-small cell lung cancer. The clinician wants to see if patient has any NSCLC-specific druggable targets in ALK (NC_000002.12:29190991-29921589), BRAF (NC_000007.14:140713327-140924929), or EGFR (NC_000007.14:55019016-55211628).

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-tx-implications?subject=HG00403&ranges=NC_000002.12:29190991-29921589,NC_000007.14:140713327-140924929,NC_000007.14:55019016-55211628&conditions=http://www.sequenceontology.org|3908
</pre>

This query seeks to determine if the subject has any breast cancer-specific therapeutic implications (e.g. medications, clinical trials) based on identified somatic variants in recent specimen.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-tx-implications?subject=HG00403&conditions=http://snomed.info/sct|372137005&genomicSourceClass=somatic&specimenIdentfiers=1
</pre>

This query seeks to determine if the subject has any genetic findings that have implications for inclusion in clinical trial NCT01234567.

<pre style="white-space: pre-wrap; word-wrap: break-word;">
$find-subject-tx-implications?subject=HG00403&treatments=https://clinicaltrials.gov/|NCT01234567
</pre>

Patient HG00403 has metastatic breast cancer. Targeted sequencing of a tumor biopsy specimen shows ERBB2 (HER2) variant NM_004448.4:c.2264_2278del. What are the treatment implications for this patient? (Results indicate responsiveness to lapatinib).

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-subject-tx-implications?subject=HG00403&variants=NM_004448.4:c.2264_2278del&conditions=http://snomed.info/sct|372137005
</pre>

See [example output](Parameters-FindSubjectTxImplicationsOutput.html).
