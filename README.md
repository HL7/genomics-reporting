# genomics-reporting

The source repository for the HL7 Clinical Genomics work group's "Clinical Genomics Reporting" FHIR implementation guide.

For history of published builds, review here:
http://hl7.org/fhir/uv/genomics-reporting/history.html

To build locally:

- Clone repo
- run '\_updatePublisher.{sh | bat}' script (answering Y to the prompts) to ensure you have the latest version of the publisher and templates
- run '\_genonce.{sh | bat}' script to run the build
- review the build output for any errors
- review the output/qa.html for any new error/warning/informational entries

