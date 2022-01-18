Instance: overall-interp
InstanceOf: OverallInterpretation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#51968-6
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab)
* valueCodeableConcept.coding[0] = $loinc#LA6576-8 "Positive"
* valueCodeableConcept.coding[+] = $sct#10828004 "Positive"
* specimen = Reference(specimen)