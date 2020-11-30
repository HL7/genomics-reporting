Instance: CGDiagnosticReportExamplediagnosticreport-hla-glstring-r4
InstanceOf: DiagnosticReport
Description: "Example for DiagnosticReport. "
* basedOn[0].display = "Sequence-based typing of HLA-A for sample-id=123456789"
* basedOn[1].display = "Sequence-based typing of HLA-B for sample-id=123456789"
* basedOn[2].display = "Sequence-based typing of HLA-C for sample-id=123456789"
* category.coding = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"
* code.coding[0] = http://loinc.org#81247-9 "Master HL7 genetic variant reporting panel"
* code.coding[1] = http://genenames.org/geneId#588 "Histocompatibility complex (HLA)"
* effectiveDateTime = "2018-07-26"
* id = "diagnosticreport-hla-glstring-r4"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-report"
* performer.display = "aTypingLab, Inc"
* result[0].display = "HLA-A genotype: HLA-A:01:01:01G+HLA-A*01:02"
* result[0].type = #Observation
* result[1].display = "HLA-B genotype: HLA-B*15:01:01:01+HLA-B*40:01:02:01/HLA-B*40:01:02:02/HLA-B*40:01:02:04/HLA-B*40:01:02:06"
* result[1].type = #Observation
* result[2].display = "HLA-C genotype: HLA-C*07:04:01:01/HLA-C*07:04:01:03+HLA-C*12:03:01:01/HLA-C*12:03:01:06"
* result[2].type = #Observation
* specimen.display = "buccal swab: 123456789"
* status = #final
