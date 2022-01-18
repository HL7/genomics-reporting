Instance: Inline-Instance-for-CG-IG-HLA-FullBundle-01-2
InstanceOf: Specimen
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/specimen"
* identifier.system = "http://myorgsurl.com"
* identifier.value = "123"
* accessionIdentifier.system = "http://mylabsurl.com"
* accessionIdentifier.value = "456"
* type = $sct#122555007 "Venous blood specimen"
* subject = Reference(urn:uuid:13f34265-335c-4853-bc38-0815315edafa) "John Storm"
  * type = "Patient"