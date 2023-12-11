Instance: molec-conseq4
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(Patient/HG00403)
* effectiveDateTime = "2023-06-01"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(Observation/variant-with-molec-consequences)
* interpretation = http://example.org/pcingola.github.io/SnpEff/se_inputoutput/\#impact-prediction#MOD "Modifier"
//kp - Error while processing 'NM_001395544.1:c.-21-3742T>C': Intronic variants are not yet supported
// * component[0].code = http://loinc.org#48004-6
// * component[0].code.text = "coding HGVS"
// * component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001395544.1:c.-21-3742T>C "NM_001395544.1:c.-21-3742T>C"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001395544.1 "NM_001395544.1"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept = http://sequenceontology.org#SO:0001627 "intron_variant"

