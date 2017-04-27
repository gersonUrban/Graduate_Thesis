Occ <- function(){
  thisEnv <- environment()
  OCC <- vector(length = 22)
  me <- list(
    thisEnv = thisEnv,
    getOcc = function(i)
    {
      return(get("thisEnv",OCC[i]))
    }
  )
  
  ## Define the value of the list within the current environment.
  assign('this',me,envir=thisEnv)
  
  ## Set the name for the class
  class(me) <- append(class(me),"Occ")
  return(me)

}
b <- Occ()
get("OCC",b$getEnv())

NordAmericain <- function(eatsBreakfast=TRUE,myFavorite="cereal")
{
  ## Get the environment for this
  ## instance of the function.
  thisEnv <- environment()
  hasBreakfast <- eatsBreakfast
  favoriteBreakfast <- myFavorite
  ## Create the list used to represent an
  ## object for this class
  me <- list(
    ## Define the environment where this list is defined so
    ## that I can refer to it later.
    thisEnv = thisEnv,
    ## The Methods for this class normally go here but are discussed
    ## below. A simple placeholder is here to give you a teaser....
    getEnv = function()
    {
      return(get("thisEnv",thisEnv))
    })
  ## Define the value of the list within the current environment.
  assign('this',me,envir=thisEnv)
  ## Set the name for the class
  class(me) <- append(class(me),"NordAmericain")
  return(me)
}


get("Occ",b$getOcc(1))

public class Occ {
  private double[] OCC = new double[22];
  
  Occ(){
    for(int i=0;i<22;i++){
      this.OCC[i] = 0;
    }
  }
  
  public double getOcc(int i){
    return this.OCC[i];
  }
  public void setOcc(int i, double valor){
    this.OCC[i] = valor;
  }
  public void addOcc(int i, double valor){
    this.OCC[i] += valor;
  }
  public void zeraOcc(int i){
    this.OCC[i] = 0;
  }
  public void zeraOcc(){
    for(int i=0;i<22;i++){
      this.OCC[i] = 0;
    }
  }
  
}

mean <- function (x, ...) {
  UseMethod("mean", x)
}

mean.numeric <- function(x, ...) sum(x) / length(x)
a <- mean.numeric(2)

Mercadoria <- function(){
  me <- list(
    m1 = 1,
    m2 = 1
  )
  class(me) <- append(class(me), "Mercadoria")
  return(me)
}


NorthAmerican <- function(eatsBreakfast=TRUE,myFavorite="cereal")
{
  
  me <- list(
    hasBreakfast = eatsBreakfast,
    favoriteBreakfast = myFavorite
  )
  
  ## Set the name for the class
  class(me) <- append(class(me),"NorthAmerican")
  return(me)
}

a = NorthAmerican()
a
a = Mercadoria()

library(R6)
Mercadoria <- R6Class("Mercadoria", public = list(m1 = 1, m2 = 1))
a <- Mercadoria



#install.packages("R6")
Person <- R6Class("Person", public = list( name = NULL, hair = NULL,
                    
                    initialize = function(name = NA, hair = NA) {
                      self$name <- name
                      self$hair <- hair
                      self$greet()
                    },
                    
                    set_hair = function(val) {
                      self$hair <- val
                    },
                    
                    greet = function() {
                      cat(paste0("Hello, my name is ", self$name, ".\n"))
                    }
                  )
)

ann <- Person$new("Ann", "black")

