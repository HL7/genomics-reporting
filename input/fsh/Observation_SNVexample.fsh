Instance: CGObservationExampleSNVexample
InstanceOf: Observation
Description: "Example for Observation. "
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.coding = http://loinc.org#69548-6 "Genetic variant assessment"
* component[0].code.coding = http://loinc.org#48018-6 "Gene studied ID"
* component[0].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:644 "AR"
* component[1].code.coding = http://loinc.org#48001-2 "Cytogenetic (chromosome) location"
* component[1].valueCodeableConcept.text = "chrX"
* component[2].code.coding = http://loinc.org#62374-4 "Human reference sequence assembly version"
* component[2].valueCodeableConcept.coding = http://loinc.org#LA14029-5 "GRCh37"
* component[3].code.coding = http://loinc.org#48002-0 "Genomic source class"
* component[3].valueCodeableConcept.coding = http://loinc.org#LA6684-0 "Somatic"
* component[4].code.coding = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[4].valueCodeableConcept.coding = http://varnomen.hgvs.org#p.(Ala412Val) "p.(Ala412Val)"
* component[5].code.coding = http://loinc.org#48006-1 "Amino acid change type"
* component[5].valueCodeableConcept.coding = http://loinc.org#LA6698-0 "Missense"
* component[6].code.coding = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* component[6].valueCodeableConcept.coding = http://www.ncbi.nlm.nih.gov/refseq#NM_000044.3 "NM_000044.3"
* component[7].code.coding = http://loinc.org#81258-6 "Allelic freq NFr"
* component[7].valueQuantity.system = "http://unitsofmeasure.org"
* component[7].valueQuantity.unit = "decimal"
* component[7].valueQuantity.value = 0.44
* component[8].code.coding = http://loinc.org#82121-5 "Allelic read depth"
* component[8].valueQuantity.code = #{reads}/{base}
* component[8].valueQuantity.system = "http://unitsofmeasure.org"
* component[8].valueQuantity.unit = "reads per base pair"
* component[8].valueQuantity.value = 120
* id = "SNVexample"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* method.coding = http://loinc.org#LA26398-0 "Sequencing"
* specimen.identifier.system = "http://slk-kliniken.de/fhir/namingSystem/tissueID"
* specimen.identifier.value = "16-123456-23"
* status = #final
* valueCodeableConcept.coding = http://loinc.org#LA9633-4 "Present"
