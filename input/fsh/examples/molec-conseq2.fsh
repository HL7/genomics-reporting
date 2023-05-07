Instance: molec-conseq2
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence"
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* subject = Reference(Patient/HG00403)
* derivedFrom = Reference(Observation/variant-with-molec-consequences)
* interpretation = http://pcingola.github.io/SnpEff/se_inputoutput/\#impact-prediction#LOW "Low"
* component[0].code = http://loinc.org#48004-6
* component[0].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001366781.1:c.90T>C "NM_001366781.1:c.90T>C"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#p.Cys30Cys "p.Cys30Cys"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001366781.1 "NM_001366781.1"
* component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept = http://sequenceontology.org#SO:0001819 "synonymous_variant"