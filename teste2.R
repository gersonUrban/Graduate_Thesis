setwd("C:/Users/Gerson/Documents/GitHub/Graduate_Thesis")

#setClass("Mercadoria", representation(m1 = "numeric", m2 = "numeric"),
#         prototype(m1 = 1, m2 = 1))
a <- new("Mercadoria")
a@m1
a@m2


setClass("Occ", representation(OCC = "vector"),
         prototype(OCC = vector(length = 22))
         )
b <- new("Occ")


setMethod("setOcc", signature(i = "numeric", j = "numeric"), 
          function(i, j) {
  structure(list(OCC[i] = j), class = "Occ")
})

setMethod("+", signature(e1 = "Occ", e2 = "numeric"), function(e1, e2) {
  structure(list(x = e1$x + e2), class = "Occ")
})

setMethod("Occ", signature("OCC"), function(i,j) {
  OCC[i] = j
})
setwd("C:/Users/Gerson/Documents/OCC_OCEAN/")
source("Mercadoria.R")
a <- new("Mercadoria")

source("Occ.R")
b <- new("Occ")
b@OCC[,1:5] <- 2 

(b <- setOcc(b,1,5))
(b <- setOcc(b,2,5))
(b <- zeraOcc(b,1))
(b <- zeraOcc(b))
(b<- addOcc(b,2,3))
(b<- addOcc(b,4,2))
getOcc(b,2)

source("Ocean.R")
oc = new("Ocean")
oc = setOcean(oc,2,0.8)
getOcean(oc,2)

oc2 = new("Ocean", OCEAN = c(0,0,0.3,1,0))

source("AtualizaOcean.R")
att = new("AtualizaOcean")

source("OCCxOCEAN.R")
occ_ocean = new("OCCxOCEAN", matriz = as.matrix(read.csv("OCC_OCEAN.csv", row.names = 1)))
getOCCxOCEAN(occ_ocean,2,2)

occ_ocean <- setOCCxOCEAN(occ_ocean,2,2,1)

getOCCxOCEAN(occ_ocean,2,2)
d = list(length(2),new("Occ"))
d[[1]] = new("Occ")


tabela = read.csv("OCC_OCEAN.csv", row.names = 1)
