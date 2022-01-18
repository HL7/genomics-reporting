Instance: Inline-Instance-for-oncology-diagnostic-6
InstanceOf: DiagnosticImplication
Usage: #inline
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-artifact"
* extension.valueRelatedArtifact.type = #justification
* extension.valueRelatedArtifact.display = "https://pmkb.weill.cornell.edu/therapies/103"
* status = #final
* category = $observation-category#laboratory
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:d0b4affa-91d6-46d1-af01-b30d9f16ef6d)
* performer = Reference(urn:uuid:a48256f8-db37-44e0-a0f6-d7af16c7c9ef)
* method = $loinc#LA26811-2 "Computational analysis"
* specimen = Reference(urn:uuid:a5d6a6a9-4859-480e-85b2-56974fef3b9d)
* derivedFrom = Reference(urn:uuid:16fdd5fc-e665-48af-99e4-48d603f3e12d)
* component[0].code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"
* component[+].code = $loinc#93044-6 "Level of Evidence"
* component[=].valueCodeableConcept = $loinc#LA30200-2 "Very strong evidence pathogenic"
* component[+].code = $loinc#81259-4
* component[=].valueCodeableConcept.text = "melanoma"