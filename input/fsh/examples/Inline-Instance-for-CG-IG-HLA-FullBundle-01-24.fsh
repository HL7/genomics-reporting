Instance: Inline-Instance-for-CG-IG-HLA-FullBundle-01-24
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84414-2 "Haplotype name"
* subject = Reference(urn:uuid:13f34265-335c-4853-bc38-0815315edafa) "John Storm"
  * type = "Patient"
* effectiveDateTime = "2016-12-15"
* valueCodeableConcept.coding.version = "3.23"
* valueCodeableConcept.coding = $hla#HLA-C*01:02:01G "HLA-C*01:02:01G"
* method = $gtr#GTR000000000.0
  * text = "NGS based Class I HLA-A, -B, -C genotyping"
* specimen = Reference(urn:uuid:e44fbe33-6084-4ae2-a95e-8bc451c63340) "buccal swab from John Storm"
* derivedFrom[0] = Reference(urn:uuid:bb55c2bc-5ad2-4bc1-8ff3-c407d06b12d0) "HLA-C*01:02:01, exon 2"
* derivedFrom[=].type = "MolecularSequence"
* derivedFrom[+] = Reference(urn:uuid:46938bb2-0486-4e87-bfd3-89aab2d5e22f) "HLA-C*01:02:01, exon 3"
  * type = "MolecularSequence"
* component.code = $loinc#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept = $geneId#HGNC:4933 "HLA-C"