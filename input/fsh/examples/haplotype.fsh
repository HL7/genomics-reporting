Instance: haplotype
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84414-2
* subject = Reference(patient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab)
* valueCodeableConcept.coding = $hla#*2
* specimen = Reference(specimen)
* derivedFrom = Reference(Observation/discrete-variant)