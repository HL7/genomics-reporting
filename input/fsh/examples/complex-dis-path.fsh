Instance: complex-dis-path
InstanceOf: DiagnosticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#diagnostic-implication
* subject = Reference(patient)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab)
* derivedFrom = Reference(complex-variant)
* component[0].code = $loinc#53037-8
* component[=].valueCodeableConcept.coding = $loinc#LA6668-3 "Pathogenic"
* component[+].code = $loinc#81259-4
* component[=].valueCodeableConcept.coding = $sct#293498008 "Debrisoquine adverse reaction (disorder)"