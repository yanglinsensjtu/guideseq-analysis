library(readxl)
library(GenomicRanges)
library(VariantAnnotation)
HRA01 <- read_excel('../6bp_identifiedOfftargets.xlsx', sheet = 'HRA01')
HRA02 <- read_excel('../6bp_identifiedOfftargets.xlsx', sheet = 'HRA02')
HRA03 <- read_excel('../6bp_identifiedOfftargets.xlsx', sheet = 'HRA03')
HRA04 <- read_excel('../6bp_identifiedOfftargets.xlsx', sheet = 'HRA04')

change2gr <- function(d.f) {
  d.f.gr <- GRanges(seqnames = d.f$`BED off-target Chromosome`,
                      IRanges(start = d.f$`BED off-target start`,
                              end = d.f$`BED off-target end`))
}
HRA01.gr <- change2gr(HRA01)
HRA02.gr <- change2gr(HRA02)
HRA03.gr <- change2gr(HRA03)
HRA04.gr <- change2gr(HRA04)
total <- unique(union(union(HRA03.gr, HRA04.gr),union(HRA01.gr, HRA02.gr)))

source('annotation.R')
source('plotscript.R')





