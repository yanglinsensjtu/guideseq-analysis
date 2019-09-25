source('plot.function.R')
for (i in seq_len(length(HRA01.gr))) {
  plotGviz(coding.obj = HRA01.gr,
           i = i,
           title = '',
           bounds = 10000,
           path = '../HRA01/')
}
