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

March 2019, patient HG00403 is found to have lung mass on CXR, and undergoes lung biopsy. WES of a 300 gene panel is performed on the  biopsy specimen, and analyzed for simple variants (SNV, MNV, InDel). For technical reasons, PIK3CB was deemed uncallable.

July 2020, patient HG00403 presents with headache, and mass is found on head CT. Biopsy is consistent with metastatic lung cancer. WES of a 420 gene panel is performed on the biopsy specimen, and analyzed for simple variants (SNV, MNV, InDel) and for Copy Number Variants. For technical reasons, PIK3CB, APC, MEN1, and portions of EGFR were deemed uncallable.

To be eligible for a particular clinical trial, patients must have an EGFR exon 19 (NC_000007.14:55174721-55174820) deletion. Patient's oncologist finds no simple or structural variants in the region of EGFR exon 19, and asks staff bioinformaticist to confirm whether EGFR, including exon 19, was studied as part of the July 2020 test. (Results indicate that EGFR was studied, but exon 19 was deemed uncallable).

<pre style="white-space: pre-wrap; word-wrap: break-word;">
GET .../$find-study-metadata?subject=HG00403&testDateRange=ge2020-06-01&testDateRange=le2020-08-01&ranges=NC_000007.14:55019016-55211628
</pre>

See [example output](Parameters-FindStudyMetadataOutput.html).
