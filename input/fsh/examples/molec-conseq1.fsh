Instance: molec-conseq1
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence that includes Loss of Function prediction"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(Patient/HG00403)
* derivedFrom = Reference(Observation/variant-with-molec-consequences)
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* component[0].code = http://loinc.org#48004-6 "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#c.-281+2T>C "c.-281+2T>C"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#M_001395525.1 "M_001395525.1"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#transcript-consequence
* component[=].valueCodeableConcept.coding[0] = http://www.sequenceontology.org/#SO:0001575 "splice_donor_variant"
* component[=].valueCodeableConcept.coding[1] = http://www.sequenceontology.org/#SO:0001627 "intron_variant"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#functional-effect
* component[=].valueCodeableConcept = http://sequenceontology.org/#SO_0002054 "loss_of_function_variant"
