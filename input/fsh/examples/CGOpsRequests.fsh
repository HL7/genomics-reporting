//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-subject-variants.html

Instance: FindSubjectVariantsOutput
InstanceOf: Parameters
Description: "Example Output of 'Find Subject Variants' Operation"

* parameter[0].name = "variants"
* parameter[=].part[0].name = "rangeItem"
* parameter[=].part[=].valueString = "NC_000017.11:39688093-39728660"
* parameter[=].part[+].name = "presence"
* parameter[=].part[=].valueBoolean = false
* parameter[+].name = "variants"
* parameter[=].part[0].name = "rangeItem"
* parameter[=].part[=].valueString = "NC_000007.14:140713327-140924929"
* parameter[=].part[+].name = "presence"
* parameter[=].part[=].valueBoolean = true
* parameter[=].part[+].name = "variant"
* parameter[=].part[=].resource.resourceType = "Observation"
* parameter[=].part[=].resource.id = "dv-5a7f781e83514"
* parameter[=].part[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* parameter[=].part[=].resource.status = #final
* parameter[=].part[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].part[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].part[=].resource.code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.code.coding.code = #69548-6
* parameter[=].part[=].resource.code.coding.display = "Genetic variant assessment"
* parameter[=].part[=].resource.subject.reference = "Patient/HG00403"
* parameter[=].part[=].resource.valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.valueCodeableConcept.coding.code = #LA9633-4
* parameter[=].part[=].resource.valueCodeableConcept.coding.display = "Present"
* parameter[=].part[=].resource.component[0].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #48002-0
* parameter[=].part[=].resource.component[=].code.coding.display = "Genomic source class [Type]"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.code = #LA6684-0
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.display = "Somatic"
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #48013-7
* parameter[=].part[=].resource.component[=].code.coding.display = "Genomic reference sequence ID"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.system = "http://www.ncbi.nlm.nih.gov/nuccore"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.code = #NC_000007.14
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #81258-6
* parameter[=].part[=].resource.component[=].code.coding.display = "Sample VAF"
* parameter[=].part[=].resource.component[=].valueQuantity.value = 0.1793
* parameter[=].part[=].resource.component[=].valueQuantity.code = #1
* parameter[=].part[=].resource.component[=].valueQuantity.system = "http://unitsofmeasure.org"
* parameter[=].part[=].resource.component[=].valueQuantity.unit = "relative frequency of a particular allele in the specimen"
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #69547-8
* parameter[=].part[=].resource.component[=].code.coding.display = "Genomic Ref allele [ID]"
* parameter[=].part[=].resource.component[=].valueString = "A"
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #69551-0
* parameter[=].part[=].resource.component[=].code.coding.display = "Genomic Alt allele [ID]"
* parameter[=].part[=].resource.component[=].valueString = "T"
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #92822-6
* parameter[=].part[=].resource.component[=].code.coding.display = "Genomic coord system"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.code = #LA30100-4
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.display = "0-based interval counting"
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #81254-5
* parameter[=].part[=].resource.component[=].code.text = "Genomic allele start-end"
* parameter[=].part[=].resource.component[=].valueRange.low.value = 140753335

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-subject-specific-variants.html

Instance: FindSubjectSpecificVariantsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindSubjectSpecificVariants' Operation"
Usage: #example
* parameter[0].name = "variants"
* parameter[=].part[0].name = "variantItem"
* parameter[=].part[=].valueString = "NM_001354609.2:c.1799T>A"
* parameter[=].part[+].name = "presence"
* parameter[=].part[=].valueBoolean = false
* parameter[+].name = "variants"
* parameter[=].part[0].name = "variantItem"
* parameter[=].part[=].valueString = "NM_007294.4:c.5559C>A"
* parameter[=].part[+].name = "presence"
* parameter[=].part[=].valueBoolean = false
* parameter[+].name = "variants"
* parameter[=].part[0].name = "variantItem"
* parameter[=].part[=].valueString = "NM_001354609.2:c.1802="
* parameter[=].part[+].name = "presence"
* parameter[=].part[=].valueBoolean = false
* parameter[+].name = "variants"
* parameter[=].part[0].name = "variantItem"
* parameter[=].part[=].valueString = "NC_000001.10:g.12225351T>A"
* parameter[=].part[+].name = "presence"
* parameter[=].part[=].valueBoolean = false
* parameter[+].name = "variants"
* parameter[=].part[0].name = "variantItem"
* parameter[=].part[=].valueString = "NM_000038.6:c.55G>T"
* parameter[=].part[+].name = "presence"
* parameter[=].part[=].valueBoolean = true
* parameter[=].part[+].name = "variant"
* parameter[=].part[=].resource.resourceType = "Observation"
* parameter[=].part[=].resource.id = "dv-5a7f781e83514"
* parameter[=].part[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* parameter[=].part[=].resource.status = #final
* parameter[=].part[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].part[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].part[=].resource.code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.code.coding.code = #69548-6
* parameter[=].part[=].resource.code.coding.display = "Genetic variant assessment"
* parameter[=].part[=].resource.subject.reference = "Patient/HG00403"
* parameter[=].part[=].resource.valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.valueCodeableConcept.coding.code = #LA9633-4
* parameter[=].part[=].resource.valueCodeableConcept.coding.display = "Present"
* parameter[=].part[=].resource.component[0].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #48002-0
* parameter[=].part[=].resource.component[=].code.coding.display = "Genomic source class [Type]"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.code = #LA6683-2
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.display = "Germline"
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #48013-7
* parameter[=].part[=].resource.component[=].code.coding.display = "Genomic reference sequence ID"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.system = "http://www.ncbi.nlm.nih.gov/nuccore"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.code = #NC_000005.9
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #53034-5
* parameter[=].part[=].resource.component[=].code.coding.display = "Allelic state"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.code = #LA6706-1
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.display = "heterozygous"
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #69547-8
* parameter[=].part[=].resource.component[=].code.coding.display = "Genomic Ref allele [ID]"
* parameter[=].part[=].resource.component[=].valueString = "G"
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #69551-0
* parameter[=].part[=].resource.component[=].code.coding.display = "Genomic Alt allele [ID]"
* parameter[=].part[=].resource.component[=].valueString = "T"
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #92822-6
* parameter[=].part[=].resource.component[=].code.coding.display = "Genomic coord system"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.code = #LA30100-4
* parameter[=].part[=].resource.component[=].valueCodeableConcept.coding.display = "0-based interval counting"
* parameter[=].part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component[=].code.coding.code = #81254-5
* parameter[=].part[=].resource.component[=].code.text = "Genomic allele start-end"
* parameter[=].part[=].resource.component[=].valueRange.low.value = 112090641

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-subject-structural-intersecting-variants.html

Instance: FindSubjectStructuralIntersectingVariantsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindSubjectStructuralIntersectingVariants' Operation"
Usage: #example
* parameter.name = "variants"
* parameter.part[0].name = "rangeItem"
* parameter.part[=].valueString = "NC_000007.13:55242414-55242513"
* parameter.part[+].name = "presence"
* parameter.part[=].valueBoolean = true
* parameter.part[+].name = "variant"
* parameter.part[=].resource.resourceType = "Observation"
* parameter.part[=].resource.id = "dv-fff9d40035a04"
* parameter.part[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* parameter.part[=].resource.status = #final
* parameter.part[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter.part[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter.part[=].resource.code.coding.system = "http://loinc.org"
* parameter.part[=].resource.code.coding.code = #69548-6
* parameter.part[=].resource.code.coding.display = "Genetic variant assessment"
* parameter.part[=].resource.subject.reference = "Patient/HG00403"
* parameter.part[=].resource.valueCodeableConcept.coding.system = "http://loinc.org"
* parameter.part[=].resource.valueCodeableConcept.coding.code = #LA9633-4
* parameter.part[=].resource.valueCodeableConcept.coding.display = "present"
* parameter.part[=].resource.component[0].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #48019-4
* parameter.part[=].resource.component[=].code.coding.display = "DNA Change Type"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.system = "http://sequenceontology.org"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.code = #SO:0000159
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.display = "deletion"
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #48013-7
* parameter.part[=].resource.component[=].code.coding.display = "Genomic reference sequence ID"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.system = "http://www.ncbi.nlm.nih.gov/nuccore"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.code = #NC_000007.13
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #48002-0
* parameter.part[=].resource.component[=].code.coding.display = "Genomic Source Class"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.code = #LA6684-0
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.display = "Somatic"
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #69547-8
* parameter.part[=].resource.component[=].code.coding.display = "Genomic Ref allele [ID]"
* parameter.part[=].resource.component[=].valueString = "G"
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #92822-6
* parameter.part[=].resource.component[=].code.coding.display = "Genomic coord system"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.code = #LA30100-4
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.display = "0-based interval counting"
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #81302-2
* parameter.part[=].resource.component[=].code.text = "Variant inner start and end"
* parameter.part[=].resource.component[=].valueRange.high.value = 55250000
* parameter.part[=].resource.component[=].valueRange.low.value = 55240000

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-subject-structural-subsuming-variants.html

Instance: FindSubjectStructuralSubsumingVariantsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindSubjectStructuralSubsumingVariants' Operation"
Usage: #example
* parameter.name = "variants"
* parameter.part[0].name = "rangeItem"
* parameter.part[=].valueString = "NC_000007.14:116672195-116798386"
* parameter.part[+].name = "presence"
* parameter.part[=].valueBoolean = true
* parameter.part[+].name = "variant"
* parameter.part[=].resource.resourceType = "Observation"
* parameter.part[=].resource.id = "dv-64c82675925d4"
* parameter.part[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* parameter.part[=].resource.status = #final
* parameter.part[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter.part[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter.part[=].resource.code.coding.system = "http://loinc.org"
* parameter.part[=].resource.code.coding.code = #69548-6
* parameter.part[=].resource.code.coding.display = "Genetic variant assessment"
* parameter.part[=].resource.subject.reference = "Patient/HG00403"
* parameter.part[=].resource.valueCodeableConcept.coding.system = "http://loinc.org"
* parameter.part[=].resource.valueCodeableConcept.coding.code = #LA9633-4
* parameter.part[=].resource.valueCodeableConcept.coding.display = "present"
* parameter.part[=].resource.component[0].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #48019-4
* parameter.part[=].resource.component[=].code.coding.display = "DNA Change Type"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.system = "http://sequenceontology.org"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.code = #SO:0001019
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.display = "copy_number_variation"
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #48013-7
* parameter.part[=].resource.component[=].code.coding.display = "Genomic reference sequence ID"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.system = "http://www.ncbi.nlm.nih.gov/nuccore"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.code = #NC_000007.14
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #48002-0
* parameter.part[=].resource.component[=].code.coding.display = "Genomic Source Class"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.code = #LA6684-0
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.display = "Somatic"
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #82155-3
* parameter.part[=].resource.component[=].code.coding.display = "Genomic Structural Variant copy Number"
* parameter.part[=].resource.component[=].valueQuantity.value = 5
* parameter.part[=].resource.component[=].valueQuantity.code = #1
* parameter.part[=].resource.component[=].valueQuantity.system = $UCUM
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #69547-8
* parameter.part[=].resource.component[=].code.coding.display = "Genomic Ref allele [ID]"
* parameter.part[=].resource.component[=].valueString = "T"
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #92822-6
* parameter.part[=].resource.component[=].code.coding.display = "Genomic coord system"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.code = #LA30100-4
* parameter.part[=].resource.component[=].valueCodeableConcept.coding.display = "0-based interval counting"
* parameter.part[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component[=].code.coding.code = #81302-2
* parameter.part[=].resource.component[=].code.text = "Variant inner start and end"
* parameter.part[=].resource.component[=].valueRange.high.value = 116800000
* parameter.part[=].resource.component[=].valueRange.low.value = 116600000

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-subject-haplotypes.html

Instance: FindSubjectHaplotypesOutput
InstanceOf: Parameters
Description: "Example Output of 'FindSubjectHaplotypes' Operation"
Usage: #example
* parameter[0].name = "haplotypes"
* parameter[=].part[0].name = "geneItem"
* parameter[=].part[=].valueString = "http://www.genenames.org/geneId|HGNC:2625"
* parameter[=].part[+].name = "genotype"
* parameter[=].part[=].resource.resourceType = "Observation"
* parameter[=].part[=].resource.id = "GenotypeCYP2D6"
* parameter[=].part[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype"
* parameter[=].part[=].resource.status = #final
* parameter[=].part[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].part[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].part[=].resource.code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.code.coding.code = #84413-4
* parameter[=].part[=].resource.code.coding.display = "Genotype display name"
* parameter[=].part[=].resource.subject.reference = "Patient/CGPatientExample01"
* parameter[=].part[=].resource.valueCodeableConcept.coding.system = "https://www.pharmvar.org/"
* parameter[=].part[=].resource.valueCodeableConcept.coding.code = #CYP2D6_*1/*1
* parameter[=].part[=].resource.valueCodeableConcept.coding.display = "CYP2D6 *1/*1"
* parameter[=].part[=].resource.specimen.reference = "Specimen/GenomicSpecimenExample01"
* parameter[=].part[=].resource.component.code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component.code.coding.code = #48018-6
* parameter[=].part[=].resource.component.code.coding.display = "Gene studied [ID]"
* parameter[=].part[=].resource.component.valueCodeableConcept.coding.system = "http://www.genenames.org/geneId"
* parameter[=].part[=].resource.component.valueCodeableConcept.coding.code = #HGNC:2625
* parameter[=].part[=].resource.component.valueCodeableConcept.coding.display = "CYP2D6"
* parameter[+].name = "haplotypes"
* parameter[=].part[0].name = "geneItem"
* parameter[=].part[=].valueString = "http://www.genenames.org/geneId|HGNC:2621"
* parameter[=].part[+].name = "genotype"
* parameter[=].part[=].resource.resourceType = "Observation"
* parameter[=].part[=].resource.id = "GenotypeCYP2C19"
* parameter[=].part[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype"
* parameter[=].part[=].resource.status = #final
* parameter[=].part[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].part[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].part[=].resource.code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.code.coding.code = #84413-4
* parameter[=].part[=].resource.code.coding.display = "Genotype display name"
* parameter[=].part[=].resource.subject.reference = "Patient/CGPatientExample01"
* parameter[=].part[=].resource.valueCodeableConcept.coding.system = "https://www.pharmvar.org/"
* parameter[=].part[=].resource.valueCodeableConcept.coding.code = #CYP2C19_*1/*2
* parameter[=].part[=].resource.valueCodeableConcept.coding.display = "CYP2C19 *1/*2"
* parameter[=].part[=].resource.specimen.reference = "Specimen/GenomicSpecimenExample01"
* parameter[=].part[=].resource.component.code.coding.system = "http://loinc.org"
* parameter[=].part[=].resource.component.code.coding.code = #48018-6
* parameter[=].part[=].resource.component.code.coding.display = "Gene studied [ID]"
* parameter[=].part[=].resource.component.valueCodeableConcept.coding.system = "http://www.genenames.org/geneId"
* parameter[=].part[=].resource.component.valueCodeableConcept.coding.code = #HGNC:2621
* parameter[=].part[=].resource.component.valueCodeableConcept.coding.display = "CYP2C19"

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-subject-specific-haplotypes.html

Instance: FindSubjectSpecificHaplotypesOutput
InstanceOf: Parameters
Description: "Example Output of 'FindSubjectSpecificHaplotypes' Operation"
Usage: #example
* parameter.name = "haplotypes"
* parameter.part[0].name = "haplotypeItem"
* parameter.part[=].valueString = "HLA-A*23"
* parameter.part[+].name = "presence"
* parameter.part[=].valueBoolean = true
* parameter.part[+].name = "genotype"
* parameter.part[=].resource.resourceType = "Observation"
* parameter.part[=].resource.id = "Genotype7"
* parameter.part[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype"
* parameter.part[=].resource.status = #final
* parameter.part[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter.part[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter.part[=].resource.code.coding.system = "http://loinc.org"
* parameter.part[=].resource.code.coding.code = #84413-4
* parameter.part[=].resource.code.coding.display = "Genotype display name"
* parameter.part[=].resource.subject.reference = "Patient/CGPatientExample01"
* parameter.part[=].resource.valueCodeableConcept.coding.system = "http://glstring.org"
* parameter.part[=].resource.valueCodeableConcept.coding.version = "1.0"
* parameter.part[=].resource.valueCodeableConcept.coding.code = #hla#3.33.0#HLA-A*02:69+HLA-A*23:30|HLA-A*02:302+HLA-A*23:26/HLA-A*23:39
* parameter.part[=].resource.valueCodeableConcept.coding.display = "hla#3.33.0#HLA-A*02:69+HLA-A*23:30|HLA-A*02:302+HLA-A*23:26/HLA-A*23:39"
* parameter.part[=].resource.specimen.reference = "Specimen/GenomicSpecimenExample01"
* parameter.part[=].resource.component.code.coding.system = "http://loinc.org"
* parameter.part[=].resource.component.code.coding.code = #48018-6
* parameter.part[=].resource.component.code.coding.display = "Gene studied [ID]"
* parameter.part[=].resource.component.valueCodeableConcept.coding.system = "http://www.genenames.org/geneId"
* parameter.part[=].resource.component.valueCodeableConcept.coding.code = #HGNC:4931
* parameter.part[=].resource.component.valueCodeableConcept.coding.display = "HLA-A"

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-subject-tx-implications.html

Instance: FindSubjectTxImplicationsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindSubjectTxImplications' Operation"
Usage: #example
* parameter.name = "implication"
* parameter[=].resource.resourceType = "Observation"
* parameter[=].resource.id = "TherapeuticImplicationExample"
* parameter[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* parameter[=].resource.status = #final
* parameter[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].resource.code.coding.system = "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs"
* parameter[=].resource.code.coding.code = #therapeutic-implication
* parameter[=].resource.subject.reference = "Patient/HG00403"
* parameter[=].resource.derivedFrom.reference = "Observation/VariantExample"
* parameter[=].resource.component[0].code.coding.system = "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs"
* parameter[=].resource.component[=].code.coding.code = #therapeutic-implication
* parameter[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].valueCodeableConcept.coding.code = #LA6677-4
* parameter[=].resource.component[=].valueCodeableConcept.coding.display = "Responsive"
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #51963-7
* parameter[=].resource.component[=].code.coding.display = "Medication assessed"
* parameter[=].resource.component[=].valueCodeableConcept.coding.system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* parameter[=].resource.component[=].valueCodeableConcept.coding.code = #480167
* parameter[=].resource.component[=].valueCodeableConcept.coding.display = "Lapatinib"
* parameter[+].name = "variant"
* parameter[=].resource.resourceType = "Observation"
* parameter[=].resource.id = "variantExample"
* parameter[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* parameter[=].resource.status = #final
* parameter[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].resource.code.coding.system = "http://loinc.org"
* parameter[=].resource.code.coding.code = #69548-6
* parameter[=].resource.code.coding.display = "Genetic variant assessment"
* parameter[=].resource.subject.reference = "Patient/HG00403"
* parameter[=].resource.valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].resource.valueCodeableConcept.coding.code = #LA9633-4
* parameter[=].resource.valueCodeableConcept.coding.display = "Present"
* parameter[=].resource.component[0].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #48002-0
* parameter[=].resource.component[=].code.coding.display = "Genomic source class [Type]"
* parameter[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].valueCodeableConcept.coding.code = #LA6684-0
* parameter[=].resource.component[=].valueCodeableConcept.coding.display = "Somatic"
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #48013-7
* parameter[=].resource.component[=].code.coding.display = "Genomic reference sequence ID"
* parameter[=].resource.component[=].valueCodeableConcept.coding.system = "http://www.ncbi.nlm.nih.gov/nuccore"
* parameter[=].resource.component[=].valueCodeableConcept.coding.code = #NC_000017.11
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #69547-8
* parameter[=].resource.component[=].code.coding.display = "Genomic Ref allele [ID]"
* parameter[=].resource.component[=].valueString = "ATTGAGGGAAAACACAT"
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #69551-0
* parameter[=].resource.component[=].code.coding.display = "Genomic Alt allele [ID]"
* parameter[=].resource.component[=].valueString = "T"
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #92822-6
* parameter[=].resource.component[=].code.coding.display = "Genomic coord system"
* parameter[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].valueCodeableConcept.coding.code = #LA30100-4
* parameter[=].resource.component[=].valueCodeableConcept.coding.display = "0-based interval counting"
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #81254-5
* parameter[=].resource.component[=].code.text = "Genomic allele start-end"
* parameter[=].resource.component[=].valueRange.low.value = 39723965

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-subject-dx-implications.html

Instance: FindSubjectDxImplicationsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindSubjectDxImplications' Operation"
Usage: #example
* parameter.name = "implication"
* parameter[=].resource.resourceType = "Observation"
* parameter[=].resource.id = "DiagnosticImplicationExample"
* parameter[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* parameter[=].resource.status = #final
* parameter[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].resource.code.coding.system = "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs"
* parameter[=].resource.code.coding.code = #diagnostic-implication
* parameter[=].resource.subject.reference = "Patient/HG00403"
* parameter[=].resource.derivedFrom.reference = "Observation/VariantExample2"
* parameter[=].resource.component[0].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #53037-8
* parameter[=].resource.component[=].code.text = "Genetic variation clinical significance"
* parameter[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].valueCodeableConcept.coding.code = #LA6668-3
* parameter[=].resource.component[=].valueCodeableConcept.coding.display = "Pathogenic"
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #81259-4
* parameter[=].resource.component[=].code.text = "Predicted phenotype"
* parameter[=].resource.component[=].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* parameter[=].resource.component[=].valueCodeableConcept.coding.code = #405501007
* parameter[=].resource.component[=].valueCodeableConcept.coding.display = "Malignant hyperthermia"
* parameter[+].name = "variant"
* parameter[=].resource.resourceType = "Observation"
* parameter[=].resource.id = "variantExample2"
* parameter[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* parameter[=].resource.status = #final
* parameter[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].resource.code.coding.system = "http://loinc.org"
* parameter[=].resource.code.coding.code = #69548-6
* parameter[=].resource.code.coding.display = "Genetic variant assessment"
* parameter[=].resource.subject.reference = "Patient/HG00403"
* parameter[=].resource.valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].resource.valueCodeableConcept.coding.code = #LA9633-4
* parameter[=].resource.valueCodeableConcept.coding.display = "Present"
* parameter[=].resource.component[0].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #48002-0
* parameter[=].resource.component[=].code.coding.display = "Genomic source class [Type]"
* parameter[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].valueCodeableConcept.coding.code = #LA6683-2
* parameter[=].resource.component[=].valueCodeableConcept.coding.display = "Germline"
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #48013-7
* parameter[=].resource.component[=].code.coding.display = "Genomic reference sequence ID"
* parameter[=].resource.component[=].valueCodeableConcept.coding.system = "http://www.ncbi.nlm.nih.gov/nuccore"
* parameter[=].resource.component[=].valueCodeableConcept.coding.code = #NC_000019.10
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #69547-8
* parameter[=].resource.component[=].code.coding.display = "Genomic Ref allele [ID]"
* parameter[=].resource.component[=].valueString = "C"
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #69551-0
* parameter[=].resource.component[=].code.coding.display = "Genomic Alt allele [ID]"
* parameter[=].resource.component[=].valueString = "T"
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #92822-6
* parameter[=].resource.component[=].code.coding.display = "Genomic coord system"
* parameter[=].resource.component[=].valueCodeableConcept.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].valueCodeableConcept.coding.code = #LA30100-4
* parameter[=].resource.component[=].valueCodeableConcept.coding.display = "0-based interval counting"
* parameter[=].resource.component[+].code.coding.system = "http://loinc.org"
* parameter[=].resource.component[=].code.coding.code = #81254-5
* parameter[=].resource.component[=].code.text = "Genomic allele start-end"
* parameter[=].resource.component[=].valueRange.low.value = 38499669

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-subject-molec-conseq.html

Instance: FindSubjectMolecConseqOutput
InstanceOf: Parameters
Description: "Example Output of 'FindSubjectMolecConseq' Operation"
Usage: #example
* parameter.name = "consequence"
* parameter[=].resource.resourceType = "Observation"
* parameter[=].resource.id = "MC1"
* parameter[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* parameter[=].resource.status = #final
* parameter[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].resource.code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* parameter[=].resource.subject = Reference(Patient/HG00403)
* parameter[=].resource.derivedFrom = Reference(Observation/variantExampleMC)
* parameter[=].resource.interpretation = http://pcingola.github.io/SnpEff/se_inputoutput/\#impact-prediction#HIGH "High"
* parameter[=].resource.component[0].code = http://loinc.org#48004-6
* parameter[=].resource.component[0].code.text = "coding HGVS"
* parameter[=].resource.component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001395525.1:c.-281+2T>C "NM_001395525.1:c.-281+2T>C"
* parameter[=].resource.component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* parameter[=].resource.component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001395525.1 "NM_001395525.1"
* parameter[=].resource.component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* parameter[=].resource.component[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001575 "splice_donor_variant"
* parameter[=].resource.component[=].valueCodeableConcept.coding[1] = http://sequenceontology.org#SO:0001627 "intron_variant"
* parameter[=].resource.component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#functional-effect
* parameter[=].resource.component[=].valueCodeableConcept = http://sequenceontology.org#SO_0002054 "loss_of_function_variant"
* parameter[+].name = "consequence"
* parameter[=].resource.resourceType = "Observation"
* parameter[=].resource.id = "MC2"
* parameter[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* parameter[=].resource.status = #final
* parameter[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].resource.code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* parameter[=].resource.subject = Reference(Patient/HG00403)
* parameter[=].resource.derivedFrom = Reference(Observation/variantExampleMC)
* parameter[=].resource.interpretation = http://pcingola.github.io/SnpEff/se_inputoutput/\#impact-prediction#LOW "Low"
* parameter[=].resource.component[0].code = http://loinc.org#48004-6
* parameter[=].resource.component[0].code.text = "coding HGVS"
* parameter[=].resource.component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001366781.1:c.90T>C "NM_001366781.1:c.90T>C"
* parameter[=].resource.component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* parameter[=].resource.component[=].valueCodeableConcept = http://varnomen.hgvs.org#p.Cys30Cys "p.Cys30Cys"
* parameter[=].resource.component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* parameter[=].resource.component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001366781.1 "NM_001366781.1"
* parameter[=].resource.component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* parameter[=].resource.component[=].valueCodeableConcept = http://sequenceontology.org#SO:0001819 "synonymous_variant"
* parameter[+].name = "consequence"
* parameter[=].resource.resourceType = "Observation"
* parameter[=].resource.id = "MC3"
* parameter[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* parameter[=].resource.status = #final
* parameter[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].resource.code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* parameter[=].resource.subject = Reference(Patient/HG00403)
* parameter[=].resource.derivedFrom = Reference(Observation/variantExampleMC)
* parameter[=].resource.interpretation = http://pcingola.github.io/SnpEff/se_inputoutput/\#impact-prediction#MOD "Modifier"
* parameter[=].resource.component[0].code = http://loinc.org#48004-6
* parameter[=].resource.component[0].code.text = "coding HGVS"
* parameter[=].resource.component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001395543.1:c.-171T>C "NM_001395543.1:c.-171T>C"
* parameter[=].resource.component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* parameter[=].resource.component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001395543.1 "NM_001395543.1"
* parameter[=].resource.component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* parameter[=].resource.component[=].valueCodeableConcept = http://sequenceontology.org#SO:0001623 "5_prime_UTR_variant"
* parameter[+].name = "consequence"
* parameter[=].resource.resourceType = "Observation"
* parameter[=].resource.id = "MC4"
* parameter[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* parameter[=].resource.status = #final
* parameter[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].resource.code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#molecular-consequence
* parameter[=].resource.subject = Reference(Patient/HG00403)
* parameter[=].resource.derivedFrom = Reference(Observation/variantExampleMC)
* parameter[=].resource.interpretation = http://pcingola.github.io/SnpEff/se_inputoutput/\#impact-prediction#MOD "Modifier"
* parameter[=].resource.component[0].code = http://loinc.org#48004-6
* parameter[=].resource.component[0].code.text = "coding HGVS"
* parameter[=].resource.component[=].valueCodeableConcept = http://varnomen.hgvs.org#NM_001395544.1:c.-21-3742T>C "NM_001395544.1:c.-21-3742T>C"
* parameter[=].resource.component[+].code = http://loinc.org#51958-7 "Transcript reference sequence [ID]"
* parameter[=].resource.component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/refseq#NM_001395544.1 "NM_001395544.1"
* parameter[=].resource.component[+].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#feature-consequence
* parameter[=].resource.component[=].valueCodeableConcept = http://sequenceontology.org#SO:0001627 "intron_variant"
* parameter[+].name = "variant"
* parameter[=].resource.resourceType = "Observation"
* parameter[=].resource.id = "variantExampleMC"
* parameter[=].resource.meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* parameter[=].resource.status = #final
* parameter[=].resource.category[+].coding = $OBSCAT#laboratory
* parameter[=].resource.category[+].coding = $DIAGNOSTICSERVICE#GE
* parameter[=].resource.code = $LNC#69548-6 "Genetic variant assessment"
* parameter[=].resource.subject.reference = "Patient/HG00403"
* parameter[=].resource.valueCodeableConcept = $LNC#LA9633-4 "Present"
* parameter[=].resource.component[+].code = $LNC#48002-0 "Genomic source class"
* parameter[=].resource.component[=].valueCodeableConcept.coding = $LNC#LA6683-2 "Germline"
* parameter[=].resource.component[+].code = http://loinc.org#48013-7 "Genomic reference sequence ID"
* parameter[=].resource.component[=].valueCodeableConcept = http://www.ncbi.nlm.nih.gov/nuccore#NC_000001.10
* parameter[=].resource.component[+].code = $LNC#53034-5 "Allelic state"
* parameter[=].resource.component[=].valueCodeableConcept = $LNC#LA6706-1 "Heterozygous"
* parameter[=].resource.component[+].code = http://loinc.org#81252-9 "Discrete genetic variant"
* parameter[=].resource.component[=].valueCodeableConcept = https://api.ncbi.nlm.nih.gov/variation/v0/#NC_000001.10:86852620:A:G "NC_000001.10:86852620:A:G"
* parameter[=].resource.component[+].code = http://loinc.org#81258-6 "Sample VAF"
* parameter[=].resource.component[=].valueQuantity = 0.6 '1' "relative frequency of a particular allele in the specimen"
* parameter[=].resource.component[+].code = http://loinc.org#69547-8 "Genomic Ref allele [ID]"
* parameter[=].resource.component[=].valueString = "A"
* parameter[=].resource.component[+].code = http://loinc.org#69551-0 "Genomic Alt allele [ID]"
* parameter[=].resource.component[=].valueString = "G"
* parameter[=].resource.component[+].code = http://loinc.org#92822-6 "Genomic coord system"
* parameter[=].resource.component[=].valueCodeableConcept = http://loinc.org#LA30100-4 "0-based interval counting"
* parameter[=].resource.component[+].code = http://loinc.org#81254-5 //"Variant exact start-end"
* parameter[=].resource.component[+].code.text = "Variant exact start-end"
* parameter[=].resource.component[=].valueRange.low.value = 86852620

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-population-specific-variants.html

Instance: FindANYPopulationSpecificVariantsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindPopulationSpecificVariants' Operation, based on 'OR' logic"
Usage: #example
* parameter[0].name = "variants"
* parameter[=].part[0].name = "variantItem"
* parameter[=].part[=].valueString = "NC_000010.10:g.121551307G>A"
* parameter[=].part[+].name = "numerator"
* parameter[=].part[=].valueQuantity.value = 7
* parameter[+].name = "variants"
* parameter[=].part[0].name = "variantItem"
* parameter[=].part[=].valueString = "NC_000011.10:g.8263343T>C"
* parameter[=].part[+].name = "numerator"
* parameter[=].part[=].valueQuantity.value = 1
* parameter[+].name = "variants"
* parameter[=].part[0].name = "variantItem"
* parameter[=].part[=].valueString = "NC_000001.10:g.198742263G>A"
* parameter[=].part[+].name = "numerator"
* parameter[=].part[=].valueQuantity.value = 3

Instance: FindALLPopulationSpecificVariantsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindPopulationSpecificVariants' Operation, based on 'AND' logic"
Usage: #example
* parameter.name = "variants"
* parameter.part[0].name = "variantItem"
* parameter.part[=].valueString = "NC_000010.10:g.121551307G>A AND NC_000011.10:g.8263343T>C AND NC_000001.10:g.198742263G>A"
* parameter.part[+].name = "numerator"
* parameter.part[=].valueQuantity.value = 2

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-population-structural-intersecting-variants.html

Instance: FindPopulationStructuralIntersectingVariantsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindPopulationStructuralIntersectingVariants' Operation"
Usage: #example
* parameter[0].name = "variants"
* parameter[=].part[0].name = "rangeItem"
* parameter[=].part[=].valueString = "NC_000017.11:43044294-43125364"
* parameter[=].part[+].name = "numerator"
* parameter[=].part[=].valueQuantity.value = 17
* parameter[=].part[+].name = "subject"
* parameter[=].part[=].valueString = "patient/12345"
* parameter[=].part[+].name = "subject"
* parameter[=].part[=].valueString = "patient/23456"
* parameter[=].part[+].name = "subject"
* parameter[=].part[=].valueString = "..."
* parameter[+].name = "variants"
* parameter[=].part[0].name = "rangeItem"
* parameter[=].part[=].valueString = "NC_000013.11:32315507-32400268"
* parameter[=].part[+].name = "numerator"
* parameter[=].part[=].valueQuantity.value = 4
* parameter[=].part[+].name = "subject"
* parameter[=].part[=].valueString = "patient/34567"
* parameter[=].part[+].name = "subject"
* parameter[=].part[=].valueString = "patient/45678"
* parameter[=].part[+].name = "subject"
* parameter[=].part[=].valueString = "..."

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-population-structural-subsuming-variants.html

Instance: FindPopulationStructuralSubsumingVariantsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindPopulationStructuralSubsumingVariants' Operation"
Usage: #example
* parameter.name = "variants"
* parameter.part[0].name = "rangeItem"
* parameter.part[=].valueString = "NC_000022.10:42522500-42526812"
* parameter.part[+].name = "numerator"
* parameter.part[=].valueQuantity.value = 113
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "patient/12345"
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "patient/23456"
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "..."

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-population-specific-haplotypes.html

Instance: FindPopulationSpecificHaplotypesOutput
InstanceOf: Parameters
Description: "Example Output of 'FindPopulationSpecificHaplotypes' Operation"
Usage: #example
* parameter.name = "haplotypes"
* parameter.part[0].name = "haplotypeItem"
* parameter.part[=].valueString = "A*1 and B*8 and DRB1*03 and DRB3*01 and A*31 and  B*35 and DRB1*04 and DRB4*01:02"
* parameter.part[+].name = "numerator"
* parameter.part[=].valueQuantity.value = 0
* parameter.part[+].name = "denominator"
* parameter.part[=].valueQuantity.value = 7534

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-population-tx-implications.html

Instance: FindPopulationTxImplicationsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindPopulationTxImplications' Operation"
Usage: #example
* parameter.name = "implications"
* parameter.part[0].name = "numerator"
* parameter.part[=].valueQuantity.value = 23
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "patient/12345"
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "patient/23456"
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "..."

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-population-dx-implications.html

Instance: FindPopulationDxImplicationsOutput
InstanceOf: Parameters
Description: "Example Output of 'FindPopulationDxImplications' Operation"
Usage: #example
* parameter.name = "implications"
* parameter.part[0].name = "numerator"
* parameter.part[=].valueQuantity.value = 23
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "patient/12345"
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "patient/23456"
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "..."

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-population-molec-conseq.html

Instance: FindPopulationMolecConseqOutput
InstanceOf: Parameters
Description: "Example Output of 'FindPopulationMolecConseq' Operation"
Usage: #example
* parameter.name = "consequences"
* parameter.part[0].name = "numerator"
* parameter.part[=].valueQuantity.value = 23
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "patient/12345"
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "patient/23456"
* parameter.part[+].name = "subject"
* parameter.part[=].valueString = "..."

//http://build.fhir.org/ig/HL7/genomics-reporting/OperationDefinition-find-study-metadata.html

Instance: FindStudyMetadataOutput
InstanceOf: Parameters
Description: "Example Output of 'FindStudyMetadata' Operation"
Usage: #example
* parameter.name = "tests"
* parameter.part[0].name = "testId"
* parameter.part[=].valueString = "test08736abc87"
* parameter.part[+].name = "testDate"
* parameter.part[=].valueDateTime = "2020-07-13"
* parameter.part[+].name = "specimenId"
* parameter.part[=].valueString = "specimen9652adbg69"
* parameter.part[+].name = "genomicBuild"
* parameter.part[=].valueCodeableConcept = http://loinc.org#LA26806-2 "GRCh38"
* parameter.part[+].name = "dnaChangeType"
* parameter.part[=].valueCodeableConcept.coding[0] = http://sequenceontology.org#SO:0001483 "SNV"
* parameter.part[=].valueCodeableConcept.coding[+] = http://sequenceontology.org#SO:0002007 "MNV"
* parameter.part[=].valueCodeableConcept.coding[+] = http://sequenceontology.org#SO:1000032 "delins"
* parameter.part[=].valueCodeableConcept.coding[+] = http://sequenceontology.org#SO:0001019 "copy_number_variation"
* parameter.part[+].name = "regionStudied"
* parameter.part[=].valueString = "['NC_000007.14:55019016-55019365', 'NC_000007.14:55142285-55142437', 'NC_000007.14:55143304-55143488', 'NC_000007.14:55146605-55146740', 'NC_000007.14:55151293-55151362', 'NC_000007.14:55152545-55152664', 'NC_000007.14:55154010-55154152', 'NC_000007.14:55155829-55155946', 'NC_000007.14:55156532-55156659', 'NC_000007.14:55156758-55156832', 'NC_000007.14:55157662-55157753', 'NC_000007.14:55160138-55160338', 'NC_000007.14:55161498-55161631', 'NC_000007.14:55163732-55163823', 'NC_000007.14:55165279-55165437', 'NC_000007.14:55171174-55171213', 'NC_000007.14:55172982-55173124', 'NC_000007.14:55173920-55174043', 'NC_000007.14:55174721-55174820', 'NC_000007.14:55181292-55181478', 'NC_000007.14:55191718-55191874', 'NC_000007.14:55192765-55192841', 'NC_000007.14:55198716-55198863', 'NC_000007.14:55200315-55200413', 'NC_000007.14:55201187-55201355', 'NC_000007.14:55201734-55201782', 'NC_000007.14:55202516-55202625', 'NC_000007.14:55205255-55211628']"
* parameter.part[+].name = "uncallableRegions"
* parameter.part[=].valueString = "['NC_000007.14:55173910-55174053', 'NC_000007.14:55174711-55174830', 'NC_000007.14:55181282-55181488']"
