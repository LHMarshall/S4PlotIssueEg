#' Class "B"
#'
#' Example class
#'
#' @name B-class
#' @title S4 Class "B"
#' @slot xcoords Object of class \code{"list"}
#' @slot ycoords Object of class \code{"list"}
#' @keywords classes
#' @export
setClass(Class = "B", representation(xcoords = "list", ycoords = "list"))

#' @importFrom methods initialize
setMethod(
  f="initialize",
  signature="B",
  definition=function(.Object, xcoords = list(c(1,2,3,4,5)), ycoords = list(c(1,2,3,4,5))){
    #Set slots
    .Object@xcoords <- xcoords
    .Object@ycoords <- ycoords
    return(.Object)
  }
)

#' @importFrom graphics plot
setMethod(
  f="plot",
  signature="B",
  definition=function(x, y, ...){
    plot(x@xcoords[[1]], x@ycoords[[1]])
    invisible(x)
  }
)

