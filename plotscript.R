source('plot.function.R')
for (i in seq_len(length(HRA01.gr))) {
  plotGviz(coding.obj = HRA01.gr,
           i = i,
           title = '',
           bounds = 20000,
           path = '../HRA01/')
}
for (i in seq_len(length(HRA02.gr))) {
  plotGviz(coding.obj = HRA02.gr,
           i = i,
           title = '',
           bounds = 20000,
           path = '../HRA02/')
}
for (i in seq_len(length(HRA03.gr))) {
  plotGviz(coding.obj = HRA03.gr,
           i = i,
           title = '',
           bounds = 20000,
           path = '../HRA03/')
}
for (i in seq_len(length(HRA04.gr))) {
  plotGviz(coding.obj = HRA04.gr,
           i = i,
           title = '',
           bounds = 20000,
           path = '../HRA04/')
}


for (i in seq_len(length(total.var))) {
  plotGviz(coding.obj = total.var,
           i = i,
           title = '',
           bounds = 20000,
           path = '../total/')
}
