#' Build a package
#'
#' @param pkg package to build
#' @param x data to build
#'
#' @return builds the package
#' @export
#'
#' @examples
#' data(iris)
#' qbuild("hua/iris", iris = iris)

qbuild <- function(pkg, ...) {
  quilt <- reticulate::import("quilt")
  quilt$build(pkg, ...)
}

#' Push package from local to remote
#'
#' @param pkg package to push
#' @param public if the package is public or not
#' @param reupload
#'
#' @return pushes package
#' @export
#'
#' @examples
#' qpush("hua/test", TRUE)
qpush <- function(pkg, public = FALSE, reupload = FALSE) {
    quilt <- reticulate::import("quilt")
    quilt$push(pkg, public, reupload)
}
