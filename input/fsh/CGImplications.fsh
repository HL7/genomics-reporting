Profile:        GenomicImplication
Parent:         GenomicBase
Id:             implication
Title:          "Genomic Implication"
Description:    "Properties common to genomic implications expressed as computable discrete elements."
* ^abstract = true
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* extension contains $workflow-relatedArtifact named workflow-relatedArtifact 0..*
* extension[$workflow-relatedArtifact] ^requirements = "This SHOULD be used to deliver artifacts that are relevant to the implication."
// add this comment to prevent an link error, as the base spec includes a link to 'supportingInfo extension' but the link doesn't convert correctly
* extension[$workflow-relatedArtifact] ^comment = """
Note that in contrast this extension, the supportingInfo extension references other resources from the patient record that were used in creating the resource.
"""
* value[x] 0..0
// * derivedFrom ^slicing.discriminator.type = #profile
// * derivedFrom ^slicing.discriminator.path = "resolve()"
// * derivedFrom ^slicing.rules = #open
// * derivedFrom ^slicing.description = "Slice based on the resolve().code type"
* derivedFrom 1..*
* derivedFrom contains variant 0..* and
    genotype 0..* and
    haplotype 0..* and 
    biomarker 0..*
* derivedFrom[variant] only Reference(Variant)
* derivedFrom[variant] ^short = "Variant the implication is derived from"
* derivedFrom[genotype] only Reference(Genotype)
* derivedFrom[genotype] ^short = "Genotype the implication is derived from"
* derivedFrom[haplotype] only Reference(Haplotype)
* derivedFrom[haplotype] ^short = "Haplotype the implication is derived from"
* derivedFrom[biomarker] only Reference(MolecularBiomarker)
* derivedFrom[biomarker] ^short = "MolecularBiomarker the implication is derived from"
// * component ^slicing.discriminator.type = #value
// * component ^slicing.discriminator.path = "code"
// * component ^slicing.rules = #open
// * component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    evidence-level 0..* and
    clinical-significance 0..1
* component[evidence-level].code = $LNC#93044-6
* component[evidence-level].code ^short = "93044-6"
* component[evidence-level] ^short = "Level of Evidence"
* component[evidence-level] ^definition = "The amount of observed support for the association between an implication and a variant / haplotype / genotype / biomarker. There are dozens if not hundreds of evidence-level value sets, generally providing an ordinal range of codes from low evidence (e.g. 'predicted', 'case report', '1-star') to high evidence (e.g. 'professional society guideline', 'expert panel consensus', '1A')."
* component[evidence-level].value[x] only CodeableConcept
* component[evidence-level].value[x] 1..1
* component[evidence-level].value[x] from EvidenceLevelExampleVS (example)
* component[evidence-level].value[x] ^binding.description = "PharmGKB or ClinVar"
* component[evidence-level].value[x] ^short = "1A | 1B | 2A | 2B | 3 | 4 | 4-star | 3-star | 2-star | 1-star | no-star"

* component.extension contains RelatedArtifactComponent named workflow-relatedArtifactComponent 0..*
* component.extension[RelatedArtifactComponent] ^requirements = "This SHOULD be used to deliver artifacts that are specific to the component code and value."

* component[clinical-significance] ^short = "Clinical significance"
* component[clinical-significance] ^definition = "The clinical impact of an implication on a person's health. There are dozens if not hundreds of clinical-significance value sets, generally providing an ordinal range of codes from low significance (e.g. 'benign') to high significance (e.g. 'pathogenic', 'oncogenic','predictive of drug response')."
* component[clinical-significance].code = $LNC#53037-8
* component[clinical-significance].code ^short = "53037-8"
* component[clinical-significance].value[x] only CodeableConcept
* component[clinical-significance].value[x] 1..1
* component[clinical-significance].value[x] from http://loinc.org/vs/LL4034-6 (example)
* component[clinical-significance].value[x] ^short = "Pathogenic | Likely pathogenic | Uncertain significance | Likely benign | Benign"

Profile:        DiagnosticImplication
Parent:         GenomicImplication
Id:             diagnostic-implication
Title:          "Diagnostic Implication"
Description:    "Observation stating a diagnostic annotation (e.g. disease risk) on one or more genotype/haplotype/variant/biomarker observations."
* . ^short = "Diagnostic Implication"



* extension contains GenomicRiskAssessment named genomic-risk-assessment 0..*
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* code = TbdCodesCS#diagnostic-implication
* code ^short = "diagnostic-implication"
// * component ^slicing.discriminator.type = #value
// * component ^slicing.discriminator.path = "code"
// * component ^slicing.rules = #open
// * component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    predicted-phenotype 0..* and
    mode-of-inheritance	0..1
* component[predicted-phenotype] ^short = "Predicted phenotype"
* component[predicted-phenotype] ^definition = "An observable characteristic (e.g., condition; disease) of an individual, as predicted by the presence of associated molecular finding(s)associated with the variant.  A code set is not specified, but it is ideal to use terms related to medical findings. Some examples are SNOMED CT descendants of 'Clinical finding' (404684003), ICD-10-CM chapters 1-18 (codes starting with letters A-R), and/or all of Human Phenotype Ontology (HPO). For example, if an individual's variant is associated with Type I Ehlers-Danlos syndrome, a valid response from SNOMED CT would be 'Ehlers-Danlos syndrome, type 1 (code 83470009)'."
* component[predicted-phenotype].code = $LNC#81259-4
* component[predicted-phenotype].code ^short = "81259-4"
* component[predicted-phenotype].value[x] only CodeableConcept
* component[predicted-phenotype].value[x] ^short = "Phenotype code, e.g. from SNOMED CT Clinical finding, ICD-10-CM chapters 1-18, or HPO"
* component[predicted-phenotype].value[x] ^binding.strength = #example
* component[predicted-phenotype].value[x] ^binding.description = "Multiple bindings accepted"
* component[predicted-phenotype].value[x] 1..1
* component[mode-of-inheritance] ^short = "Mode of Inheritance"
* component[mode-of-inheritance] ^definition = "The transmission pattern of the condition/phenotype in a pedigree. Values originally curated by GA4GH." 
* component[mode-of-inheritance].code = TbdCodesCS#condition-inheritance
* component[mode-of-inheritance].code ^short = "condition-inheritance"
* component[mode-of-inheritance].value[x] only CodeableConcept
* component[mode-of-inheritance].value[x] 1..1
* component[mode-of-inheritance].value[x] from ConditionInheritanceModeVS (preferred)
* component[mode-of-inheritance].value[x] ^short = "Autosomal dominant | Autosomal recessive | X-linked | ... (more)"

Profile:        TherapeuticImplication
Parent:         GenomicImplication
Id:             therapeutic-implication
Title:          "Therapeutic Implication"
Description:    "Observation stating a therapeutic annotation (e.g. drug susceptibility, clinical trial eligibility) on one or more genotype/haplotype/variant/biomarker observations."
* . ^short = "Therapeutic Implication"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* code = TbdCodesCS#therapeutic-implication
* code ^short = "therapeutic-implication"
// * component ^slicing.discriminator.type = #value
// * component ^slicing.discriminator.path = "code"
// * component ^slicing.rules = #open
// * component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    therapeutic-implication 0..* and
    phenotypic-treatment-context 0..* and
    medication-assessed 0..* and
    therapy-assessed 0..*

* component[therapeutic-implication] ^short = "Therapeutic Implication"
* component[therapeutic-implication] ^definition = "A predicted ramification based on the presence of associated molecular finding(s). Ramifications may include alterations in drug metabolism (or pharmacokinetics) that determine the concentration of the drug, prodrug, and/or break-down products over time; alterations in drug efficacy (or pharmacodynamics) that determine how effective a drug is at a given concentration; alterations that alter the risk of adverse drug events, or other types of implications that indicate altered responsiveness to other types of therapies."
* component[therapeutic-implication].code = TbdCodesCS#therapeutic-implication
* component[therapeutic-implication].code ^short = "therapeutic-implication"
* component[therapeutic-implication].value[x] only CodeableConcept
* component[therapeutic-implication].value[x] 1..1
* component[therapeutic-implication].value[x] from GeneticTherapeuticImplicationsVS (extensible)
* component[therapeutic-implication].value[x] ^short = "Responsive | Resistant | Poor metabolizer | Rapid metabolizer | Decreased function | Increased function | Does not meet eligibility criteria for clinical trial | ... (more)"

* component[phenotypic-treatment-context].code = $LNC#81259-4
* component[phenotypic-treatment-context].code ^short = "81259-4"
* component[phenotypic-treatment-context] ^short = "Phenotypic treatment context"
* component[phenotypic-treatment-context] ^definition = "A condition whose treatment in medication-assessed or therapy-assessed is contextually impacted by the variant. A code set is not specified, but it is ideal to use terms related to medical findings. Some examples are SNOMED CT descendants of 'Clinical finding' (404684003), ICD-10-CM chapters 1-18 (codes starting with letters A-R), and all of Human Phenotype Ontology (HPO). For example, if an individual's variant affects the efficacy of imatinib in non-small cell lung cancer, a valid response from SNOMED CT would be 'Non-small cell lung cancer (code 254637007)'."
* component[phenotypic-treatment-context].value[x] only CodeableConcept
* component[phenotypic-treatment-context].value[x] ^binding.strength = #example
* component[phenotypic-treatment-context].value[x] ^binding.description = "Binding not yet defined (examples: SNOMED CT Clinical findings, ICD-10-CM chapters 1-18, HPO terms)"
* component[phenotypic-treatment-context].value[x] 1..1
* component[phenotypic-treatment-context].value[x] ^short = "Contextual phenotype/condition code"

* component[medication-assessed].code = $LNC#51963-7
* component[medication-assessed].code ^short = "51963-7"
* component[medication-assessed] ^short = "Medication Assessed"
* component[medication-assessed] ^definition = "The codified medication whose implication is being described."
* component[medication-assessed] ^requirements = "If this component is used, it should not conflict with the extension also named 'medication-assessed' which allows for more detailed medication data to be shared."
* component[medication-assessed].value[x] only CodeableConcept
* component[medication-assessed].value[x] ^binding.strength = #example
* component[medication-assessed].value[x] ^binding.description = "Binding not yet defined (RxNorm or similar)"
* component[medication-assessed].value[x] 1..1
* component[medication-assessed].value[x] ^short = "Medication code"
* component[medication-assessed].extension contains MedicationAssessedReference named medication-assessed-reference 0..*
* component[medication-assessed].extension[MedicationAssessedReference] ^requirements = "NOTE - If this extension is used, it SHALL NOT conflict with the code delivered in the component.valueCodeableConcept."

* component[therapy-assessed] ^short = "Non-medication therapy assessed"
* component[therapy-assessed] ^definition = "The non-medication therapy (e.g., altered diet, radiation therapy, surgery) implicated with respect to the related finding(s) and cancer/phenotypic treatment context"
* component[therapy-assessed].code = TbdCodesCS#associated-therapy
* component[therapy-assessed].code ^short = "associated-therapy"
* component[therapy-assessed].value[x] only CodeableConcept
* component[therapy-assessed].value[x] ^binding.strength = #example
* component[therapy-assessed].value[x] ^binding.description = "Binding not yet defined"
* component[therapy-assessed].value[x] 1..1
* component[therapy-assessed].extension contains TherapyAssessedReference named therapy-assessed-reference 0..*
* component[therapy-assessed].extension[TherapyAssessedReference] ^requirements = "NOTE - If this extension is used, it SHALL NOT conflict with the code delivered in the component.valueCodeableConcept."

Profile:        MedicationRecommendation
Parent:         Task
Id:             medication-recommendation
Title:          "Medication Recommendation"
Description:    "Task proposing medication recommendations based on the implications of genomic findings."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* status 1..1
* status = $TASKSTATUS#requested
* intent 1..1
* intent = $TASKINTENT#proposal
* code from http://loinc.org/vs/LL4049-4 
* focus only Reference(MedicationStatement)
* reasonReference only Reference(TherapeuticImplication)

Profile:        FollowupRecommendation
Parent:         Task
Id:             followup-recommendation
Title:          "Followup Recommendation"
Description:    "Task proposing a follow-up that is recommended based on the implications of genomic findings."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* status 1..1
* status = $TASKSTATUS#requested
* intent 1..1
* intent = $TASKINTENT#proposal
* code from http://loinc.org/vs/LL1037-2 (extensible)
* reasonReference only Reference(TherapeuticImplication or DiagnosticImplication or MolecularConsequence)

Profile:        MolecularConsequence
Parent:         GenomicImplication
Id:             molecular-consequence
Title:          "Molecular Consequence"
Description:    "Profile for communicating the calculated or observed effect of a DNA variant, generally on its downstream transcript and, if applicable, ensuing protein sequence. Molecular consequences may also apply to DNA, such as intergenic regions where there are no transcripts (e.g. 'regulatory_region_variant'). Component 'feature-consequence' categorizes the structural implications of a variant (e.g. the variant disrupts a regulatory region, the variant is an inframe insertion), whereas component 'functional-effect' categorizes how the variant affects overall function (e.g. is predicted to result in loss of gene function)."
* . ^short = "Molecular Consequence"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* code = TbdCodesCS#molecular-consequence
* code ^short = "molecular-consequence"

//* valueCodeableConcept from http://loinc.org/vs/LL1971-2 (required)
//* valueCodeableConcept ^short = "Indeterminate | No call | Present | Absent."
//* valueCodeableConcept ^definition = "The presence or absence of the variant described in the components. If not searching for specific variations and merely reporting what's found, the profile's value should be set to 'Present'."

// * component ^slicing.discriminator.type = #value
// * component ^slicing.discriminator.path = "code"
// * component ^slicing.rules = #open
// * component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    coding-hgvs 0..1 and
    transcript-ref-seq 0..1 and
    protein-hgvs 0..1 and
    protein-ref-seq 0..1 and
    feature-consequence 0..* and
    functional-effect 0..1

* component[coding-hgvs].code = $LNC#48004-6
* component[coding-hgvs].code ^short = "48004-6"
* component[coding-hgvs] ^short = "DNA change (c.HGVS)"
* component[coding-hgvs] ^definition = "Human Genome Variation Society (HGVS) nomenclature for a single DNA marker. The use of the nomenclature must be extended to describe non-variations (aka. wild types) see samples for wild type examples."
* component[coding-hgvs].value[x] only CodeableConcept
* component[coding-hgvs].value[x] 1..1
* component[coding-hgvs].value[x] from HGVSVS (required) 
* component[coding-hgvs].value[x] ^short = "A valid HGVS-formatted 'c.' string, e.g. NM_005228.5:c.2369C>T."

* component[transcript-ref-seq].code = $LNC#51958-7
* component[transcript-ref-seq].code ^short = "51958-7"
* component[transcript-ref-seq] ^short = "Reference Transcript"
* component[transcript-ref-seq] ^definition = "NCBI's RefSeq ('NM_...'), Ensembl ('ENST...'), and LRG ('LRG...' plus 't1' to indicate transcript)"
* component[transcript-ref-seq].value[x] only CodeableConcept
* component[transcript-ref-seq].value[x] ^binding.strength = #example
* component[transcript-ref-seq].value[x] ^binding.description = "Multiple bindings acceptable (NCBI or LRG)"
* component[transcript-ref-seq].value[x] 1..1
* component[transcript-ref-seq].value[x] ^short = "Versioned transcript reference sequence identifier"

* component[protein-hgvs].code = $LNC#48005-3
* component[protein-hgvs].code ^short = "48005-3"
* component[protein-hgvs] ^short = "Protein (Amino Acid) Change - pHGVS"
* component[protein-hgvs] ^definition = "Description of the protein (amino acid) sequence change using a valid HGVS-formatted string. The description of the variant is surrounded in parentheses if it is calculated rather than directly observed."
* component[protein-hgvs].value[x] only CodeableConcept
* component[protein-hgvs].value[x] 1..1
* component[protein-hgvs].value[x] from HGVSVS (required)
* component[protein-hgvs].value[x] ^short = "A valid HGVS-formatted 'p.' string, e.g. NP_000050.2:p.(Asn1836Lys)"

* component[protein-ref-seq].code = TbdCodesCS#protein-ref-seq
* component[protein-ref-seq].code ^short = "protein-ref-seq"
* component[protein-ref-seq] ^short = "Protein Reference Sequence"
* component[protein-ref-seq] ^definition = "ID of the protein reference sequence, which includes transcribed and non transcribed stretches. It covers the entire protein described."
* component[protein-ref-seq].value[x] only CodeableConcept
* component[protein-ref-seq].value[x] ^short = "Versioned protein reference sequence identifier"
* component[protein-ref-seq].value[x] ^binding.strength = #example
* component[protein-ref-seq].value[x] ^binding.description = "Multiple bindings acceptable (NCBI or LRG)"
* component[protein-ref-seq].value[x] 1..1

* component[feature-consequence].code = TbdCodesCS#feature-consequence
* component[feature-consequence].code ^short = "feature-consequence"
* component[feature-consequence] ^short = "Feature Consequence"
* component[feature-consequence] ^definition = "A feature consequence categorizes the structural implications of a variant (e.g. the variant disrupts a regulatory region, the variant is an inframe insertion). NOTE: The bound Molecular Consequence value set is extensible. Variant annotation tools such as snpEff provide a rich assortment of feature consequences (see http://example.org/pcingola.github.io/SnpEff/se_inputoutput/#effect-prediction-details), some of which are outside the value set. "
* component[feature-consequence].value[x] only CodeableConcept
* component[feature-consequence].value[x] ^short = "stop_lost | stop_gained | inframe_insertion | frameshift_variant | ... (many)"
* component[feature-consequence].value[x] 1..1
* component[feature-consequence].value[x] from MolecularConsequenceVS (extensible)
* component[feature-consequence].value[x] ^binding.description = "Concepts in sequence ontology under SO:0001537."

* component[functional-effect].code = TbdCodesCS#functional-effect
* component[functional-effect].code ^short = "functional-effect"
* component[functional-effect] ^short = "Functional Effect"
* component[functional-effect] ^definition = "A predicted or observed effect of a variant on the ability of its gene(s) or protein product(s) to function."
* component[functional-effect].value[x] only CodeableConcept
* component[functional-effect].value[x] 1..1
* component[functional-effect].value[x] ^short = "gain of function | loss of function | loss of heterozygosity | decreased transcript level | increased transcipt level | dominant negative variant | ... (more)"
* component[functional-effect].value[x] from FunctionalEffectVS (extensible)
* component[functional-effect].value[x] ^binding.description = "Sequence Ontology terms under SO:0001536"