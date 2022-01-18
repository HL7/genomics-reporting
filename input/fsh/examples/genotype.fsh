Instance: genotype
InstanceOf: Genotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84413-4
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab)
* valueCodeableConcept = $pharmvar#"CYP2C9 *2/*5" "CYP2C9 *2/*5"
* specimen = Reference(specimen)
* derivedFrom = Reference(haplotype)
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding = $geneId#2623 "CYP2C9"
* component[+].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding = $geneId#23663 "VKORC1"