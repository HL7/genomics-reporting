Instance: CGObservationExampleobs-idh-ex
InstanceOf: Observation
Description: "Example for Observation. "
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.coding = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/TbdCodes#diagnostic-implication "Diagnostic Implication"
* component[0].code.coding = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[0].valueCodeableConcept.coding = http://loinc.org#LA6668-3 "Pathogenic"
* component[1].code.coding = http://loinc.org#81259-4 "Associated phenotype"
* component[1].valueCodeableConcept.text = "Cystic fibrosis"
* component[2].code.coding = http://loinc.org#81259-4 "Associated phenotype"
* component[2].valueCodeableConcept.text = "Congenital bilateral absence of the vas deferens"
* component[3].code.coding = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/TbdCodes#mode-of-inheritance "mode-of-inheritance"
* component[3].valueCodeableConcept.coding = http://ghr.nlm.nih.gov/primer/inheritance/inheritancepatterns#Autosomalrecessive "Autosomal recessive"
* derivedFrom.reference = "Observation/SNVexample"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/RelatedArtifact"
* extension.valueRelatedArtifact.type = #citation
* extension.valueRelatedArtifact.url = "https://www.ncbi.nlm.nih.gov/clinvar/variation/53685/#clinical-assertions"
* id = "obs-idh-ex"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
