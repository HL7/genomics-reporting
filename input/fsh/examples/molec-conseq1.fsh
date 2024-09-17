Instance: molec-conseq1
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence that includes Loss of Function prediction"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(Patient/HG00403)
* effectiveDateTime = "2023-06-01"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(Observation/variant-with-molec-consequences)
* interpretation = http://example.org/pcingola.github.io/SnpEff/se_inputoutput/\#impact-prediction#HIGH "High"
//KP - Error while processing 'NM_001395525.1:c.-281+2T>C': Intronic variants are not yet supported
// * component[0].code = http://loinc.org#48004-6
// * component[0].code.text = "coding HGVS"
// * component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001395525.1:c.-281+2T>C "NM_001395525.1:c.-281+2T>C"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001395525.1 "NM_001395525.1"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.coding[0] = http://www.sequenceontology.org#SO:0001575 "splice_donor_variant"
* component[=].valueCodeableConcept.coding[1] = http://www.sequenceontology.org#SO:0001627 "intron_variant"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#functional-effect
* component[=].valueCodeableConcept = http://www.sequenceontology.org#SO_0002054 "loss_of_function_variant"
