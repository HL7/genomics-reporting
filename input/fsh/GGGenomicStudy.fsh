Profile: GenomicStudyMetadata
Parent: GenomicStudy
Id: genomic-study-metadata
Title: "Genomic Study Metadata"
Description: "A genomic study is a set of analyses performed to analyze and generate genomic data."
* analysis
  * regionsStudied only Reference(GenomicDataFile or Observation)
  * regionsCalled only Reference(GenomicDataFile or Observation)
  * input
    * file only Reference(GenomicDataFile)
    * generatedByReference only Reference(GenomicStudyMetadata)
  * output
    * file only Reference(GenomicDataFile)
