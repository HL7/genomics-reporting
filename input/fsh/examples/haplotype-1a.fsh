Instance: haplotype-1a
InstanceOf: Haplotype
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#84414-2
* subject = Reference(patient-1a)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab-1a)
* valueCodeableConcept.coding = $hla#*2
* specimen = Reference(specimen-1a)
* derivedFrom = Reference(Observation/discrete-variant-1a)