######################################################################
# Create the base Occ class
#####################################################################
N_OCC = 22
Occ <- setClass(
  # Set the name for the class
  "Occ",
  
  # Define the slots
  slots = c(
    OCC = "vector"
  ),
  
  # Set the default values for the slots
  prototype=list(
    OCC = matrix(ncol = N_OCC, 0)
  )
)

# create a method to get the value of the OCC
setGeneric(name="getOcc",
           def=function(theObject,i)
           {
             standardGeneric("getOcc")
           }
)

setMethod(f="getOcc",
          signature="Occ",
          definition=function(theObject,i)
          {
            return(theObject@OCC[,i])
          }
)


# create a method to assign the value of the Occ[i]
setGeneric(name="setOcc",
           def=function(theObject,i,j)
           {
             standardGeneric("setOcc")
           }
)

setMethod(f="setOcc",
          signature="Occ",
          definition=function(theObject,i,j)
          {
            theObject@OCC[,i] <- j
            validObject(theObject)
            return(theObject)
          }
)

# Add the value 'j' to the Occ[i]
setGeneric(name="addOcc",
           def=function(theObject,i,j)
           {
             standardGeneric("addOcc")
           }
)

setMethod(f="addOcc",
          signature="Occ",
          definition=function(theObject,i,j)
          {
            theObject@OCC[,i] <- theObject@OCC[,i] + j
            validObject(theObject)
            return(theObject)
          }
)

# create a method to set '0' to the Occ[i] or Occ
setGeneric(name="zeraOcc",
           def=function(theObject,...)
           {
             standardGeneric("zeraOcc")
           }
)

setMethod(f="zeraOcc",
          signature="Occ",
          definition=function(theObject,i = NULL)
          {
            if(is.null(i)){
              theObject@OCC <- matrix(ncol = N_OCC, 0)
            }
            else{
              theObject@OCC[,i] <- 0
            }
            validObject(theObject)
            return(theObject)
          }
)
