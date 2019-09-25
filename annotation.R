library(VariantAnnotation)
library(TxDb.Hsapiens.UCSC.hg19.knownGene)
txdb <- TxDb.Hsapiens.UCSC.hg19.knownGene
total.var <- unique(locateVariants(total, txdb, AllVariants()))
table(unique(total.var)$LOCATION)

