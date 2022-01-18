Instance: Inline-Instance-for-oncology-report-example-3
InstanceOf: Specimen
Usage: #inline
* identifier.system = "http://molit.eu/fhir/genomics/NamingSystem/cegat/tissueID"
* identifier.value = "UNKNOWN"
* type = $v2-0487#TUMOR "Tumor"
* subject = Reference(urn:uuid:f7a438e6-f484-453d-97e8-aa4d51008648)
* collection.method = $IG_TODO#Biopsy "Biopsie"
* collection.bodySite = $icd-10-cm#C16.0