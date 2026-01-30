Instance: molec-conseq2
InstanceOf: MolecularConsequence
Description: "Example Molecular Consequence"
Usage: #example
* status = #final
* category[labCategory] = $OBSCAT#laboratory
* category[geCategory] = $DIAGNOSTICSERVICE#GE
* code = TbdCodesCS#molecular-consequence
* subject = Reference(Patient/HG00403)
* effectiveDateTime = "2023-06-01"
* performer = Reference(ExampleLab)
* derivedFrom = Reference(Observation/variant-with-molec-consequences)
* interpretation = http://example.org/pcingola.github.io/SnpEff/se_inputoutput/\#impact-prediction#LOW "Low"
* component[+].code = http://loinc.org#48004-6
* component[=].code.text = "coding HGVS"
* component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001366781.1:c.90T>C "NM_001366781.1:c.90T>C"
//kp - unable to determine pHGVS
// * component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
// * component[=].valueCodeableConcept = http://varnomen.hgvs.org#p.Cys30Cys "p.Cys30Cys"
* component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001366781.1 "NM_001366781.1"
* component[+].code = TbdCodesCS#feature-consequence
* component[=].valueCodeableConcept = http://www.sequenceontology.org#SO:0001819 "synonymous_variant"