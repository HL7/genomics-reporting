/*
 * Rulesets
 */

RuleSet: NewRelatedArtifact(citation)
* extension[+].url = http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/CGRelatedArtifact
* extension[=].valueRelatedArtifact.type = #citation
* extension[=].valueRelatedArtifact.citation = "{citation}"