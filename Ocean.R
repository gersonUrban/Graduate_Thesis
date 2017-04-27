######################################################################
# Create the base OCEAN class
######################################################################

N_OCEAN = 5
Ocean <- setClass(
  # Set the name for the class
  "Ocean",
  
  # Define the slots
  slots = c(
    OCEAN = "vector"
  ),
  
  # Set the default values for the slots
  prototype=list(
    OCEAN = matrix(ncol = N_OCEAN, 0.5)
  )
)

# create a method to get the value of the OCC
setGeneric(name="getOcean",
           def=function(theObject,i)
           {
             standardGeneric("getOcean")
           }
)

setMethod(f="getOcean",
          signature="Ocean",
          definition=function(theObject,i)
          {
            return(theObject@OCEAN[,i])
          }
)


# create a method to assign the value of the Occ[i]
setGeneric(name="setOcean",
           def=function(theObject,i,j)
           {
             standardGeneric("setOcean")
           }
)

setMethod(f="setOcean",
          signature="Ocean",
          definition=function(theObject,i,j)
          {
            theObject@OCEAN[,i] <- j
            validObject(theObject)
            return(theObject)
          }
)