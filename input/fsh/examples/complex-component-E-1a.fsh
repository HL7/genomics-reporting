Instance: complex-component-E-1a
InstanceOf: Variant
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/patient-1a)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(Organization/lab-1a)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* specimen = Reference(Specimen/specimen-1a)
* component[0].code = $loinc#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding.version = "???"
* component[=].valueCodeableConcept.coding = $clinvar#38486 "NM_000106.5(CYP2D6):c.1457G>C (p.Ser486Thr)"
* component[+].code = $loinc#51958-7
* component[=].valueCodeableConcept = $refseq#NM_000106.5
* component[+].code = $loinc#48004-6
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $varnomen#c.1457G>C