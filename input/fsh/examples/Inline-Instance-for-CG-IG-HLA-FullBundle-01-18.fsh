Instance: Inline-Instance-for-CG-IG-HLA-FullBundle-01-18
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84414-2 "Haplotype name"
* subject = Reference(urn:uuid:13f34265-335c-4853-bc38-0815315edafa) "John Storm"
  * type = "Patient"
* effectiveDateTime = "2016-12-15"
* valueCodeableConcept.coding.version = "3.23"
* valueCodeableConcept.coding = $hla#HLA-B*57:01:01G "HLA-B*57:01:01G"
* method = $gtr#GTR000000000.0
  * text = "NGS based Class I HLA-A, -B, -C genotyping"
* specimen = Reference(urn:uuid:e44fbe33-6084-4ae2-a95e-8bc451c63340) "buccal swab from John Storm"
* derivedFrom[0] = Reference(urn:uuid:05fa52d7-5c67-460a-8722-d3460b24d6fe) "HLA-B*57:01:01, exon 2"
* derivedFrom[=].type = "MolecularSequence"
* derivedFrom[+] = Reference(urn:uuid:db69e549-6267-4777-b4b9-8813f3329309) "HLA-B*57:01:01, exon 3"
  * type = "MolecularSequence"
* component.code = $loinc#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept = $geneId#HGNC:4932 "HLA-B"