Instance: complex-component-D
InstanceOf: Variant
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/patient-1a)
* effectiveDateTime = "2016"
* issued = "2016-09-06T00:00:00-05:00"
* performer = Reference(Organization/lab-1a)
* valueCodeableConcept.coding = $loinc#LA9633-4 "Present"
* specimen = Reference(Specimen/specimen-1a)
* component[0].code = $loinc#81252-9 "Discrete genetic variant"
* component[=].valueCodeableConcept.coding = $clinvar#31934 "NM_000106.5(CYP2D6):c.886C>T (p.Arg296Cys)"
* component[+].code = $loinc#51958-7
* component[=].valueCodeableConcept.coding = $refseq#NM_000106.5
* component[+].code = $loinc#48004-6
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $varnomen#c.886C>T
* component[+].code = $loinc#48005-3
* component[=].valueCodeableConcept.coding.version = "15.11"
* component[=].valueCodeableConcept.coding = $varnomen#p.Arg296Cys
* component[+].code = $loinc#48019-4
* component[=].valueCodeableConcept.coding = $loinc#LA6690-7 "Substitution"
* component[+].code = $loinc#48006-1
* component[=].valueCodeableConcept.coding = $loinc#LA6698-0 "Missense"