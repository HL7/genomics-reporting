Instance: obs-idh-ex
InstanceOf: DiagnosticImplication
Usage: #example
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-artifact"
* extension.valueRelatedArtifact.type = #citation
* extension.valueRelatedArtifact.url = "https://www.ncbi.nlm.nih.gov/clinvar/variation/53685/#clinical-assertions"
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(SNVexample)
* component[0].code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"
* component[+].code = $loinc#81259-4
* component[=].valueCodeableConcept.coding[0] = $medgen#C0010674 "Cystic fibrosis"
* component[=].valueCodeableConcept.coding[+] = $orpha#ORPHA:586
* component[=].valueCodeableConcept.coding[+] = $omim#219700
* component[=].valueCodeableConcept.text = "Cystic fibrosis"
* component[+].code = $tbd-codes-cs#condition-inheritance
* component[=].valueCodeableConcept = $#0000007 "Autosomal recessive inheritance"