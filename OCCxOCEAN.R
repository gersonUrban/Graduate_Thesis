OCCxOCEAN <- setClass(
  # Set the name for the class
  "OCCxOCEAN",
  
  #representation(k = "numeric"),
  
  # Define the slots
  slots = c(
    matriz = "matrix"
  ),
  
  # Set the default values for the slots
  prototype=list(
    matriz = matrix(ncol = N_OCEAN, nrow = N_OCC)
  )
)



# create a method to get the value of the OCCxOCEAN
setGeneric(name="getOCCxOCEAN",
           def=function(theObject,i,j)
           {
             standardGeneric("getOCCxOCEAN")
           }
)

setMethod(f="getOCCxOCEAN",
          signature="OCCxOCEAN",
          definition=function(theObject,i,j)
          {
            return(theObject@matriz[i,j])
          }
)

# create a method to assign the value of the Occ[i]
setGeneric(name="setOCCxOCEAN",
           def=function(theObject,i,j,x)
           {
             standardGeneric("setOCCxOCEAN")
           }
)

setMethod(f="setOCCxOCEAN",
          signature="OCCxOCEAN",
          definition=function(theObject,i,j,x)
          {
            theObject@matriz[i,j] <- x
            validObject(theObject)
            return(theObject)
          }
)