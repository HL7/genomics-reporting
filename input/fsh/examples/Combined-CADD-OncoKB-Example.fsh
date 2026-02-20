Instance: BRAF-V600E-comprehensive-annotation
InstanceOf: GenomicAnnotation
Usage: #example
Title: "BRAF V600E Variant Annotation with CADD and OncoKB Scores"
Description: """
Comprehensive genomic annotation for BRAF c.1799T>A (p.Val600Glu) variant including
both CADD computational prediction scores and OncoKB clinical annotation scores.
"""

* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#genomic-annotation
* code.text = "Genomic annotation"

* subject = Reference(Patient/example-patient-melanoma)
* effectiveDateTime = "2026-01-12"
* issued = "2026-01-12T14:30:00Z"
* performer = Reference(Organization/example-genomics-lab)

* derivedFrom = Reference(Variant/BRAF-V600E-variant)

* method = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#computational-prediction
* method.text = "Combined computational prediction (CADD v1.6) and clinical annotation (OncoKB)"

* component[annotation-score][0].code = AnnotationScoreTypes#cadd-phred-score
* component[annotation-score][0].code.text = "CADD Phred score"
* component[annotation-score][0].valueQuantity.value = 32.0
* component[annotation-score][0].valueQuantity.system = "http://unitsofmeasure.org"
* component[annotation-score][0].valueQuantity.code = #1

* component[annotation-score][1].code = AnnotationScoreTypes#cadd-raw-score
* component[annotation-score][1].code.text = "CADD raw score"
* component[annotation-score][1].valueQuantity.value = 5.234567
* component[annotation-score][1].valueQuantity.system = "http://unitsofmeasure.org"
* component[annotation-score][1].valueQuantity.code = #1

* component[annotation-score][2].code = AnnotationScoreTypes#oncokb-oncogenicity
* component[annotation-score][2].code.text = "OncoKB Oncogenicity"
* component[annotation-score][2].valueCodeableConcept = OncoKBOncogenicity#oncogenic

* component[annotation-score][3].code = AnnotationScoreTypes#oncokb-therapeutic-level
* component[annotation-score][3].code.text = "OncoKB Therapeutic Level"
* component[annotation-score][3].valueCodeableConcept = OncoKBTherapeuticLevels#LEVEL_1

* component[annotation-score][4].code = AnnotationScoreTypes#oncokb-diagnostic-level
* component[annotation-score][4].code.text = "OncoKB Diagnostic Level"
* component[annotation-score][4].valueCodeableConcept = OncoKBDiagnosticLevels#LEVEL_Dx1

* component[annotation-score][5].code = AnnotationScoreTypes#oncokb-prognostic-level
* component[annotation-score][5].code.text = "OncoKB Prognostic Level"
* component[annotation-score][5].valueCodeableConcept = OncoKBPrognosticLevels#LEVEL_Px2

* component[population-allele-frequency].code = http://loinc.org#92821-8
* component[population-allele-frequency].code.text = "Population allele frequency"
* component[population-allele-frequency].valueQuantity.value = 0.000012
* component[population-allele-frequency].valueQuantity.system = "http://unitsofmeasure.org"
* component[population-allele-frequency].valueQuantity.code = #1
* component[population-allele-frequency].extension[knowledgebase-ancestry-group].valueCodeableConcept.text = "gnomAD v3.1.2 - All populations"

* note[0].text = "CADD Phred score of 32.0 indicates very high deleteriousness prediction (top 0.01% of variants)."
* note[1].text = "OncoKB classification: Oncogenic with Level 1 therapeutic evidence. FDA-approved BRAF inhibitors are indicated for BRAF V600E-mutant melanoma."
* note[2].text = "This variant is included in FDA-approved companion diagnostics and NCCN guidelines for melanoma treatment selection."
