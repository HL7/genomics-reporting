Instance: CGObservationExamplegenotype-hla-a-glstring-r4
InstanceOf: Observation
Description: "Example for Observation. "
* basedOn.display = "Sequence-based typing of HLA-A for sample-id=123456789"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.coding[0] = http://loinc.org#84413-4 "Genotype display name"
* code.coding[1] = http://loinc.org#57290-9 "HLA-A [Type] by High resolution"
* component.code.coding = http://loinc.org#48018-6 "Gene studied [ID]"
* component.valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:4931 "HLA-A"
* derivedFrom[0].display = "HLA-A Allele: HLA-A*03:01:01:01"
* derivedFrom[0].type = #Observation
* derivedFrom[1].display = "HLA-A Allele: HLA-A*30:01:01"
* derivedFrom[1].type = #Observation
* effectiveDateTime = "2018-07-26"
* id = "genotype-hla-a-glstring-r4"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype"
* method.text = "PACBIO Sequel"
* performer.display = "aTypingLab, Inc"
* performer.type = #Organization
* specimen.display = "buccal swab: 123456789"
* status = #final
* valueCodeableConcept.coding = http://glstring.org#hla#3.31.0#HLA-A*03:01:01:01+HLA-A*30:01:01
* valueCodeableConcept.coding.version = "1.0"
