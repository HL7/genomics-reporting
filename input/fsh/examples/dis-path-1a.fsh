Instance: dis-path-1a
InstanceOf: DiagnosticImplication
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#diagnostic-implication
* subject = Reference(patient-1a)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(lab-1a)
* derivedFrom = Reference(Observation/discrete-variant)
* component[0].code = $loinc#53037-8
* component[=].valueCodeableConcept.coding = $loinc#LA6668-3 "Pathogenic"
* component[+].code = $loinc#81259-4
* component[=].valueCodeableConcept.coding = $medgen#C1970173 "Acyl-CoA dehydrogenase family, member 9, deficiency of"