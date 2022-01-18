Instance: complex-variant
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* specimen = Reference(specimen)
* hasMember[0] = Reference(Observation/complex-component-D)
* hasMember[+] = Reference(Observation/complex-component-E)
* component.code = $loinc#81263-6
* component.valueCodeableConcept = $loinc#LA26218-0 "Haplotype"