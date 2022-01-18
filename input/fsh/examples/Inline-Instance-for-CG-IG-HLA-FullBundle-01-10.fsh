Instance: Inline-Instance-for-CG-IG-HLA-FullBundle-01-10
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84414-2 "Haplotype name"
* subject = Reference(urn:uuid:13f34265-335c-4853-bc38-0815315edafa) "John Storm"
  * type = "Patient"
* effectiveDateTime = "2016-12-15"
* valueCodeableConcept.coding.version = "3.23"
* valueCodeableConcept.coding = $hla#HLA-A*01:01:01G "HLA-A*01:01:01G"
* method = $gtr#GTR000000000.0
  * text = "NGS based Class I HLA-A, -B, -C genotyping"
* specimen = Reference(urn:uuid:e44fbe33-6084-4ae2-a95e-8bc451c63340) "buccal swab from John Storm"
* derivedFrom[0] = Reference(urn:uuid:8200dab6-18a2-4550-b913-a7db480c0804) "HLA-A*01:01:01:01, exon 2"
* derivedFrom[=].type = "MolecularSequence"
* derivedFrom[+] = Reference(urn:uuid:7c393185-f15c-45bc-a714-c0fdbea32675) "HLA-A*01:01:01:01, exon 3"
  * type = "MolecularSequence"
* component.code = $loinc#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept = $geneId#HGNC:4931 "HLA-A"