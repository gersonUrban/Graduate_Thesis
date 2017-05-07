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


# 
# # create a method to get the value of the OCC
# setGeneric(name="getOcean",
#            def=function(theObject,i)
#            {
#              standardGeneric("getOcean")
#            }
# )
# 
# setMethod(f="getOcean",
#           signature="Ocean",
#           definition=function(theObject,i)
#           {
#             return(theObject@OCEAN[,i])
#           }
# )
