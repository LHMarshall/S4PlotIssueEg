#' @include 'ClassB.R'

#' Class "A"
#'
#' Example class
#'
#' @name A-class
#' @title S4 Class "A"
#' @slot b Object of class \code{"B"}
#' @keywords classes
#' @export
setClass(Class = "A", representation(b = "B"))

#' @importFrom methods initialize
setMethod(
  f="initialize",
  signature="A",
  definition=function(.Object, objB){
    #Set slots
    .Object@b <- objB
    return(.Object)
  }
)

#' @importFrom graphics plot
setMethod(
  f="plot",
  signature="A",
  definition=function(x, y, ...){
    plot(x@b)
    invisible(x)
  }
)

