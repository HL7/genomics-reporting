### Scope and Usage

This profile is the base profile for all other profiles in this guide, defining a set of constraints that are applicable across all observations.

#### Common Elements

- `secondary-finding (extension)` can flag an observation as a secondary finding, a finding that is unrelated to the primary purpose for the test
- `partOf` is limited to references which are applicable to genomic observations
- `category` slices required two categories for all genomic observations in order to facilitate more efficient queries
- `note` is a [CodedAnnotation](StructureDefinition-coded-annotation.html) that allow all comments to also contain coded type
- `derivedFrom` is limited to references which are applicable to genomic observations
- `conclusion-string (component)` represents a summary conclusion to provide interpretation or impression guidance
