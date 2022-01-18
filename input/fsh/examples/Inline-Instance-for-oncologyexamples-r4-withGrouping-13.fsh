Instance: Inline-Instance-for-oncologyexamples-r4-withGrouping-13
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $ncimeta#C43359 "Group"
* hasMember[0] = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d) "SNV analysis for JAK2 variant"
* hasMember[+] = Reference(urn:uuid:772de7d7-e1bd-4183-bdb5-cea8eda317cd) "SNV analysis for KDR variant"
* hasMember[+] = Reference(urn:uuid:b33eb7ec-d83e-49d2-b0f3-729d024ebe01) "SNV analysis for ERBB4 variant"
* hasMember[+] = Reference(urn:uuid:40e85eda-4d31-4bd2-a5a0-c39d63f9824f) "TMB value analysis"
* hasMember[+] = Reference(urn:uuid:64b91716-6431-41bd-8fd4-7ac99bebdee9) "MSI status analysis"