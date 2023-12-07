Instance: obs-idh-ex
InstanceOf: DiagnosticImplication
Description: "Example DiagnosticImplication - Pathogenic for CF"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#diagnostic-implication "Diagnostic Implication"
* subject = Reference(Patient/HG00403)
* effectiveDateTime = "2023-06-01"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(SNVexample)
* component[0].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.type = #citation
* component[=].extension[RelatedArtifactComponent].valueRelatedArtifact.url = "https://www.ncbi.nlm.nih.gov/clinvar/variation/53685/#clinical-assertions"
* component[+].code = $LNC#81259-4
* component[=].valueCodeableConcept.coding[0] = $MONDO#MONDO:0009061 "cystic fibrosis"
* component[=].valueCodeableConcept.text = "Cystic fibrosis"
* component[+].code = TbdCodesCS#condition-inheritance
* component[=].valueCodeableConcept = $HPO#HP:0000007 "Autosomal recessive inheritance"