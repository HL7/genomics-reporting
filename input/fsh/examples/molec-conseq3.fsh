Instance: molec-conseq3
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
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001395543.1:c.-171T>C "NM_001395543.1:c.-171T>C"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001395543.1 "NM_001395543.1"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept = http://www.sequenceontology.org#SO:0001623 "5_prime_UTR_variant"
