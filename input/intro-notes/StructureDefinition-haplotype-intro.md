Haplotype describe a set of genomic [variations](StructureDefinition-variant.html) that appear on a single strand of DNA - and which are therefore typically inherited together. Many haplotypes are expressed as simple strings, and can be conveyed in `valueCodeableConcept.text`. In some cases, haplotypes are sufficiently standardized to be conveyed as codes in `valueCodeableConcept.code`.

For Pharmacogenomics, implementers SHOULD send coded haplotypes.  Here is an example using PharmVar:
- Coded PGx
```json
{ 
  "valueCodeableConcept": { 
    "coding": [{ 
      "system": "http://www.pharmvar.org", 
      "code": "PV01777", 
      "display": "CYP2C9*3.002" }],
    "text": "CYP2C9*3B" 
    } 
}
```

For both genotypes and haplotypes, reporting the structured variant data is optional. However, implementers SHOULD when possible. For example, sending PGX star-alleles without variant-level information is not best practice as it is both potentially ambiguous and can preclude future utility of the report.

Review the [Genotypes](StructureDefinition-genotype.html) page for guidance on reporting genotypes and haplotypes together.
