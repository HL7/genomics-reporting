Instance: molec-conseq4
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(Patient/HG00403)
* derivedFrom = Reference(Observation/variant-with-molec-consequences)
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#MOD "Modifier"
* component[0].code = http://loinc.org#48004-6 "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#c.-21-3742T>C "c.-21-3742T>C"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001395544.1 "NM_001395544.1"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#transcript-consequence
* component[=].valueCodeableConcept = http://sequenceontology.org#SO:0001627 "intron_variant"

