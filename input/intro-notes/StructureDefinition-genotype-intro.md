Genotype describes combinations of genomic variations that together are associated with a particular phenotype - i.e., a specific physical, behavioral, or risk-associated difference associated with the organism whose specimen was tested. Genotype is used to convey corresponding [haplotypes](StructureDefinition-haplotype.html) or [variations](StructureDefinition-variant.html) at a particular locus. Many genotypes are expressed as simple strings, and can be conveyed in `valueCodeableConcept.text`. In some cases, genotypes are sufficiently standardized to be conveyed as codes in `valueCodeableConcept.code`.

For HLA, KIR, and other genes in the immunogenomics domain, the National Marrow Donor Program (NMDP) led a community effort to define the Genotype List String (GL String) grammar, described [here](https://glstring.org). Notably, the GL String uses '+' as a delimiter between alleles in a genotype. It also has delimiters for ambiguous genotypes, allele lists, and haplotypes.

For Pharmacogenomics, implementers SHOULD send coded haplotypes, and for genotypes (diplotypes) MAY use a simple, human readable grammar of:

[HGNC gene symbol], followed by white space, followed by a slash ('/') delimited list of haplotype names.

Here are some examples that are standardized, note that there are examples which still lack standardization today.
- Coded HLA (glstring)
```json
{
  "valueCodeableConcept": { 
  "coding": [{ 
      "system": "http://glstring.org", 
      "version": "1.0", 
      "code": "#hla#3.23#HLA-A*01:01:01:01/HLA-A*01:02+HLA-A*24:02:01:01" 
    }] 
  }
}
```

- PGx Genotype (coded haplotypes with human-readable text; represents the CYP2C9 *2 haplotype on one chromosome and the CYP2C9 *5 haplotype on the homologous chromosome)
```json
{ 
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "http://www.pharmvar.org",
        "code": "PV00538",
        "display": "CYP2C9*2"
      },
      {
        "system": "http://www.pharmvar.org",
        "code": "PV00541",
        "display": "CYP2C9*5"
      }
    ],
    "text": "CYP2C9 *2/*5" 
  } 
}
```

For both genotypes and haplotypes, reporting the structured variant data is optional. However, implementers SHOULD when possible. For example, sending PGX star-alleles without variant-level information is not best practice as it is both potentially ambiguous and can preclude future utility of the report.
