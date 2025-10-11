Instance: dna-change-type-map
InstanceOf: ConceptMap
Usage: #definition
Description: "Mapping from http://loinc.org ValueSet for DNA Change Type to http://www.sequenceontology.org codes"

* title = "DNA Change Type Map"
* name = "DNAChangeType"
* status = #draft
* experimental = false
* publisher = "HL7 International Clinical Genomics Work Group"
* description = "LOINC and SequenceOntology mappings for DNA change type"
* copyright = "This material contains content from LOINC (http://loinc.org)..."
* sourceScopeCanonical = "http://loinc.org/vs/LL379-9"
* targetScopeCanonical = "http://hl7.org/fhir/uv/genomics-reporting/ValueSet/dna-change-type-vs"

* group[+].source = "http://loinc.org"
* group[=].target = "http://www.sequenceontology.org"

* group[=].element[+].code = http://loinc.org#LA9658-1
* group[=].element[=].display = "Wild type"
* group[=].element[=].target[+].code = http://www.sequenceontology.org#SO:0002073
* group[=].element[=].target[=].display = "no_sequence_alteration"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = http://loinc.org#LA6692-3
* group[=].element[=].display = "Deletion"
* group[=].element[=].target[+].code = http://www.sequenceontology.org#SO:0000159
* group[=].element[=].target[=].display = "deletion"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = http://loinc.org#LA6686-5
* group[=].element[=].display = "Duplication"
* group[=].element[=].target[+].code = http://www.sequenceontology.org#SO:1000035
* group[=].element[=].target[=].display = "duplication"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = http://loinc.org#LA6687-3
* group[=].element[=].display = "Insertion"
* group[=].element[=].target[+].code = http://www.sequenceontology.org#SO:0000667
* group[=].element[=].target[=].display = "insertion"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = http://loinc.org#LA6688-1
* group[=].element[=].display = "Insertion/Deletion"
* group[=].element[=].target[+].code = http://www.sequenceontology.org#SO:1000032
* group[=].element[=].target[=].display = "delins"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = http://loinc.org#LA6689-9
* group[=].element[=].display = "Inversion"
* group[=].element[=].target[+].code = http://www.sequenceontology.org#SO:1000036
* group[=].element[=].target[=].display = "inversion"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = http://loinc.org#LA6690-7
* group[=].element[=].display = "Substitution"
* group[=].element[=].target[+].code = http://www.sequenceontology.org#SO:1000002
* group[=].element[=].target[=].display = "substitution"
* group[=].element[=].target[=].relationship = #equivalent
