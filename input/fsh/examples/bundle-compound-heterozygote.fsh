Instance: bundle-compound-heterozygote
InstanceOf: Bundle
Description: "Example bundle with compound heterozygous variant, where the specific changes are represented with HGVS."
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
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component.code = $LNC#48004-6 "DNA change (c.HGVS)"
* component.valueCodeableConcept = $HGVS#NM_022787.3:c.769G>A "NM_022787.3:c.769G>A"

Instance: Inline-Instance-for-compound-heterozygote-2
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* component.code = $LNC#48004-6 "DNA change (c.HGVS)"
* component.valueCodeableConcept = $HGVS#NM_022787.3:c.53A>G "NM_022787.3:c.53A>G"

Instance: Inline-Instance-for-compound-heterozygote-3
InstanceOf: Variant
Usage: #inline
* status = #final
* category = $OBSCAT#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* hasMember[0] = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12e) "NM_022787.3:c.53A>G"
* hasMember[+] = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d) "NM_022787.3:c.769G>A"
* component.code = $LNC#81263-6 "Complex Variant Type"
* component.valueCodeableConcept = $LNC#LA26217-2 "Compound heterozygous"

