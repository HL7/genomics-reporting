Instance: Inline-Instance-for-CG-IG-HLA-FullBundle-01-17
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84414-2 "Haplotype name"
* subject = Reference(urn:uuid:13f34265-335c-4853-bc38-0815315edafa) "John Storm"
  * type = "Patient"
* effectiveDateTime = "2016-12-15"
* valueCodeableConcept.coding.version = "3.23"
* valueCodeableConcept.coding = $hla#HGG00041 "HLA-B*15:01:01G"
* method = $gtr#GTR000000000.0
  * text = "NGS based Class I HLA-A, -B, -C genotyping"
* specimen = Reference(urn:uuid:e44fbe33-6084-4ae2-a95e-8bc451c63340) "buccal swab from John Storm"
* derivedFrom[0] = Reference(urn:uuid:cbabf93e-1b4b-46f2-ba1e-d84862670670) "HLA-B*15:01:01:01, exon 2"
* derivedFrom[=].type = "MolecularSequence"
* derivedFrom[+] = Reference(urn:uuid:c233ad3d-1572-48d6-93da-0a583535e138) "HLA-B*15:01:01:01, exon 3"
  * type = "MolecularSequence"
* component.code = $loinc#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept = $geneId#HGNC:4932 "HLA-B"