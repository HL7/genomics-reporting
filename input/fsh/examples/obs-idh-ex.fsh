Instance: obs-idh-ex
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - Pathogenic for CF"
Usage: #example
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-artifact"
* extension.valueRelatedArtifact.type = #citation
* extension.valueRelatedArtifact.url = "https://www.ncbi.nlm.nih.gov/clinvar/variation/53685/#clinical-assertions"
* status = #final
* category = $OBSCAT#laboratory
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* derivedFrom = Reference(SNVexample)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.coding[0] = $MEDGEN#C0010674 "Cystic fibrosis"
* component[=].valueCodeableConcept.coding[+] = $ORPHA#ORPHA:586
* component[=].valueCodeableConcept.coding[+] = $OMIM#219700
* component[=].valueCodeableConcept.text = "Cystic fibrosis"
* component[+].code = TbdCodesCS#condition-inheritance
* component[=].valueCodeableConcept = $HPO#0000007 "Autosomal recessive inheritance"