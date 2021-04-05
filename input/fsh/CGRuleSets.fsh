/*
 * Rulesets
 */

RuleSet: RelatedArtifact(citation)
* extension[+].url = http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/RelatedArtifact
* extension[=].valueRelatedArtifact.type = #justification
* extension[=].valueRelatedArtifact.citation = "{citation}"