Instance: Inline-Instance-for-oncologyexamples-r4-6
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* component[0].code = $loinc#81290-9 "Genomic DNA change (gHGVS)"
* component[=].valueCodeableConcept = $varnomen#9:g.5073770G>T "9:g.5073770G>T"
* component[+].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept = $varnomen#p.Val617Phe "p.Val617Phe"
* component[+].code = $loinc#48006-1 "Amino acid change type"
* component[=].valueCodeableConcept = $loinc#LA6698-0 "Missense"
* component[+].code = $loinc#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $loinc#LA6683-2 "Germline"
* component[+].code = $loinc#48018-6 "Gene studied ID"
* component[=].valueCodeableConcept.coding.system = "http://www.genenames.org/geneId"
* component[=].valueCodeableConcept.coding.display = "JAK2"