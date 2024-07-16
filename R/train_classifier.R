#' Trains a classification model using the specified algorithm.
#'
#' @param data The training dataset.
#' @param formula Formula for the model.
#' @param method The name of the classification algorithm (e.g., "rf" for Random Forest).
#' @param ... Additional arguments passed to the modeling function.
#' @return Trained model object.
#' @examples
#' train_classifier(iris, Species ~ ., method = "rf")
#' @export
train_classifier <- function(data, formula, method, ...) {
  requireNamespace("caret", quietly = TRUE)
  model <- caret::train(formula, data = data, method = method, ...)
  return(model)
}
