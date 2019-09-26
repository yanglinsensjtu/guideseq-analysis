library(VariantAnnotation)
library(TxDb.Hsapiens.UCSC.hg19.knownGene)
txdb <- TxDb.Hsapiens.UCSC.hg19.knownGene
total.var <- locateVariants(total, txdb, AllVariants())
total.var.re.Duplicate <- unique(granges(total.var))
table(unique(total.var)$LOCATION)

