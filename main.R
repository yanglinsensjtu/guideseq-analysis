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

source('plot.function.R')
for (i in seq_len(length(HRA01.gr))) {
  plotGviz(coding.obj = HRA01.gr,
           i = i,
           title = '',
           bounds = 10000,
           path = '../HRA01/')
}
