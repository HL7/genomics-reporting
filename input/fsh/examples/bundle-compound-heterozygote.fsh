Instance: bundle-compound-heterozygote
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d"
* entry[=].resource = Inline-Instance-for-compound-heterozygote-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12e"
* entry[=].resource = Inline-Instance-for-compound-heterozygote-2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12a"
* entry[=].resource = Inline-Instance-for-compound-heterozygote-3
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

Instance: Inline-Instance-for-compound-heterozygote-1
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* component.code = $loinc#48004-6 "DNA change (c.HGVS)"
* component.valueCodeableConcept = $varnomen#NM_022787.3:c.769G>A "NM_022787.3:c.769G>A"

Instance: Inline-Instance-for-compound-heterozygote-2
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* component.code = $loinc#48004-6 "DNA change (c.HGVS)"
* component.valueCodeableConcept = $varnomen#NM_022787.3:c.53A>G "NM_022787.3:c.53A>G"

Instance: Inline-Instance-for-compound-heterozygote-3
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* hasMember[0] = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12e) "NM_022787.3:c.53A>G"
* hasMember[+] = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d) "NM_022787.3:c.769G>A"
* component.code = $loinc#81263-6 "Complex Variant Type"
* component.valueCodeableConcept = $loinc#LA26217-2 "Compound heterozygous"

