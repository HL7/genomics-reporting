Instance: complex-variant-1a
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6
* subject = Reference(patient-1a)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab-1a)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* specimen = Reference(specimen-1a)
* hasMember[0] = Reference(Observation/complex-component-D-1a)
* hasMember[+] = Reference(Observation/complex-component-E-1a)
* component.code = $loinc#81263-6
* component.valueCodeableConcept = $loinc#LA26218-0 "Haplotype"