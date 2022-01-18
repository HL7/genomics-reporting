Instance: Inline-Instance-for-CG-IG-HLA-FullBundle-01-12
InstanceOf: Genotype
Usage: #inline
* basedOn = Reference(urn:uuid:99309303-045e-4cf4-90d7-250d7a7476ea) "Class I HLA genotyping for John Storm"
  * type = "ServiceRequest"
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84413-4 "Genotype display name"
* subject = Reference(urn:uuid:13f34265-335c-4853-bc38-0815315edafa) "John Storm"
  * type = "Patient"
* effectiveDateTime = "2016-12-15"
* valueCodeableConcept.coding.version = "1.0"
* valueCodeableConcept.coding = $glstring#hla#3.23.0#HLA-A:01:01G+HLA-A*01:02
* method = $gtr#GTR000000000.0
  * text = "NGS based Class I HLA-A, -B, -C genotyping"
* specimen = Reference(urn:uuid:e44fbe33-6084-4ae2-a95e-8bc451c63340) "buccal swab from John Storm"
* derivedFrom[0] = Reference(urn:uuid:b7765bbf-df40-486a-9f2f-404309643de6) "HLA-A*01:01:01G, exons 2 and 3"
* derivedFrom[=].type = "Observation"
* derivedFrom[+] = Reference(urn:uuid:d98d92a7-0e86-4ae5-b036-b7e1bba6ec32) "HLA-A*01:02, exons 2 and 3"
  * type = "Observation"
* component.code = $loinc#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept = $geneId#HGNC:4931 "HLA-A"